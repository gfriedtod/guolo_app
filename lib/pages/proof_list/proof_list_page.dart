import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guolo_app/models/lottery_ticket_entity.dart';
import 'package:guolo_app/services/payment_proof/payment_proof_cubit.dart';

import '../../repositorys/payment_proof_repository.dart';

class ProofListPage extends StatelessWidget {
  final LotteryTicketLotterieDto lotteryDto;

  ProofListPage({super.key, required this.lotteryDto});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des preuves'),
      ),
      body: BlocProvider(
        create: (context) => PaymentProofCubit(
            RepositoryProvider.of<PaymentProofRepository>(context))..init(lotteryDto.id),
        child: BlocConsumer<PaymentProofCubit, PaymentProofState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: (error) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(error)));
                });
          },
          builder: (context, state) {
            return Center(
              child: RefreshIndicator(
                onRefresh: () async {
                 await context.read<PaymentProofCubit>().init(lotteryDto.id);
                },
                child: state.maybeWhen(
                    orElse: () {
                      return Text("Error");
                    },
                    loading: () => const CircularProgressIndicator(),
                    success: (paymentProof) => SingleChildScrollView(
                          child: SizedBox(
                            height: size.height * 0.9,
                            child: ListView.builder(
                                itemCount: paymentProof.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: (){

                                      },
                                      child: Card(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(CupertinoIcons.doc_append),
                                              Text("Preuves de paiement"),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        )),
              ),
            );
          },
        ),
      ),
    );
  }
}

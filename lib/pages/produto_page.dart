import 'package:flutter/material.dart';

import '../controller/produto_card.dart';
import '../models/categories.dart';
import '../models/produto.dart';
import '../repositories/produto_repository.dart';
import 'details_page.dart';

class ProdutoPage extends StatefulWidget {
  Category category;

  ProdutoPage({Key? key, required this.category}) : super(key: key);

  @override
  State<ProdutoPage> createState() => _ProdutoPageState();
}

class _ProdutoPageState extends State<ProdutoPage> {
  @override
  detailPage(Produto produto) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Details(produto: produto),
      ),
    );
  }

  Widget build(BuildContext context) {
    final tabela = ProdutoRepository.tabela;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category.nome,
          style: const TextStyle(fontSize: 20),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            const SizedBox(height: 0),
            Expanded(
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  ListView.builder(
                    itemCount: tabela.length,
                    itemBuilder: (context, index) => ProductCard(
                      produto: tabela[index],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const currencyFormat = require('currency.js')
const BRL = value => currencyFormat(value, { symbol: 'R$', decimal: ',', separator: '.' });
const listaProdutos = require('./produtos.js')

function totalEstoque() {
    let totalEstoque = 0
    for (var i = 0; i < listaProdutos.length; i++) {
        totalEstoque = totalEstoque + listaProdutos[i].qtdEstoque
    }
    console.log(`a quantidade total de produtos em estoque é de ${totalEstoque}`)
}

function itensDestaque() {
    let itemDestaque = 0
    for (var i = 0; i < listaProdutos.length; i++) {
        if (listaProdutos[i].emDestaque === 'sim') {
            itemDestaque = itemDestaque + listaProdutos[i].qtdEstoque
        } else {
        }
    }
    console.log(`A quantidade de itens em destaque é de ${itemDestaque}`)
}

function itensDisponivel() {
    let itemDisponivel = 0
    for (var i = 0; i < listaProdutos.length; i++) {
        if (listaProdutos[i].disponivel === 'sim') {
            itemDisponivel = itemDisponivel + listaProdutos[i].qtdEstoque
        } 
    }
    console.log(`A quantidade de itens disponiveis é de ${itemDisponivel}`)
}

function totalInventario() {
    let totalInventario = 0
    for (var i = 0; i < listaProdutos.length; i++) {
        totalInventario = totalInventario + listaProdutos[i].preco * listaProdutos[i].qtdEstoque
    }
    console.log(`O valor total do seu inventário é de ${BRL(totalInventario).format()}`)
}

function somaDepartamento() {
    for (var cont = 1; cont <= 9; cont++) {
        let totalInventario = {
            id: 0,
            nome: '',
            total: 0
        }
        let filter = listaProdutos.filter(item => item.departamento.idDepto === cont)
        for (var i = 0; i < filter.length; i++) {
            totalInventario.total = totalInventario.total + filter[i].qtdEstoque
            totalInventario.nome = filter[i].departamento.nomeDepto
            totalInventario.id = filter[i].departamento.idDepto
        }
        console.log(totalInventario)
    }
}

function valorInventarioDepto() {
    for (var cont = 1; cont <= 9; cont++) {
        let valorInventario = {
            id: 0,
            nome: '',
            inventario: 0
        }
        let filter = listaProdutos.filter(item => item.departamento.idDepto === cont)
        for (var i = 0; i < filter.length; i++) {
            valorInventario.inventario = valorInventario.inventario + filter[i].preco * filter[i].qtdEstoque
            valorInventario.id = filter[i].departamento.idDepto
            valorInventario.nome = filter[i].departamento.nomeDepto
        }
        console.log(valorInventario)
    }
}

function ticketmedio() {
    let totalEstoque = 0
    let valorTotal = 0
    for (var i = 0; i < listaProdutos.length; i++) {
        if (listaProdutos[i].qtdEstoque > 0)
            totalEstoque = totalEstoque + listaProdutos[i].qtdEstoque
        valorTotal = valorTotal + listaProdutos[i].preco * listaProdutos[i].qtdEstoque
    }
    console.log(`O ticket médio dos seus produtos é de ${BRL(valorTotal / totalEstoque).format()}`)
}

function ticketMedioDpto() {
    for (var cont = 1; cont <= 9; cont++) {
        let departamento = {
            id: 0,
            nome: '',
            ticketMedio: 0
        }
        let totEstoque = 0
        let filter = listaProdutos.filter(item => item.departamento.idDepto === cont)
        for (var i = 0; i < filter.length; i++) {
            if (filter[i].qtdEstoque > 0)
                totEstoque = totEstoque + filter[i].qtdEstoque
                departamento.ticketMedio = departamento.ticketMedio + filter[i].preco * filter[i].qtdEstoque
                departamento.id = filter[i].departamento.idDepto
                departamento.nome = filter[i].departamento.nomeDepto
        }
        departamento.ticketMedio = departamento.ticketMedio / totEstoque
        console.log(departamento)
    }
}

function dptoMaisValioso() {
    let valorDpto = 0
    let valorDptoCompara = 0
    let nomeDpto = ''
    let nomeDptoCompara = ''
    let idDpto = 0
    while (idDpto < 10) {
        let filter = listaProdutos.filter(item => item.departamento.idDepto === idDpto)
        valorDptoCompara = 0

        for (i = 0; i < filter.length; i++) {
            if (filter[i].qtdEstoque > 0) {
                nomeDptoCompara = filter[i].departamento.nomeDepto
                valorDptoCompara = valorDptoCompara + filter[i].qtdEstoque * filter[i].preco
            }
        }
        if (valorDptoCompara > valorDpto) {
            valorDpto = valorDptoCompara
            nomeDpto = nomeDptoCompara
        }
        idDpto++
    }
    console.log(`o Departamento mais valioso é o ${nomeDpto} e ele vale um total de ${BRL(valorDpto).format()}`)

}

function produtoMaisCaro() {
    let valorItem = 0.0
    let departamento = ''
    let nomeItem = ''
    for (i = 0; i < listaProdutos.length; i++) {
        if (listaProdutos[i].preco > valorItem) {
            valorItem = listaProdutos[i].preco
            departamento = listaProdutos[i].departamento.nomeDepto
            nomeItem = listaProdutos[i].descricao
        }
    }
    console.log(`O produto mais caro da sua loja é o ${nomeItem}, seu valor é de ${BRL(valorItem).format()} e seu departamento é ${departamento}`)
}

function produtoMaisBarato() {
    let valorItem = 999.0
    let departamento = ''
    let nomeItem = ''
    for (i = 0; i < listaProdutos.length; i++) {
        if (listaProdutos[i].preco < valorItem) {
            valorItem = listaProdutos[i].preco
            departamento = listaProdutos[i].departamento.nomeDepto
            nomeItem = listaProdutos[i].descricao
        }
    }
    console.log(`O produto mais barato da sua loja é o ${nomeItem}, seu valor é de ${BRL(valorItem).format()} e seu departamento é ${departamento}`)
}




//totalEstoque()
//itensDestaque()
//itensDisponivel()
//totalInventario()
//somaDepartamento()
//valorInventarioDepto()
//ticketmedio()
//ticketMedioDpto()
//dptoMaisValioso()
//produtoMaisCaro()
//produtoMaisBarato()
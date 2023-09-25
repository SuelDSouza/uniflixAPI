// Vamos começar definindo uma classe chamada Filme.
class Filme {
  // Aqui declaramos as propriedades que um Filme terá.
  // Elas vão armazenar informações como id, título, resumo, etc.
  int id;
  String resumo;
  int duracao;
  String titulo;
  String capa;

  // Agora estamos definindo o construtor da classe Filme.
  // Um construtor é como uma receita para criar um objeto dessa classe.
  Filme({
    this.id = 0,
    this.resumo = "",
    this.duracao = 0,
    this.titulo = "",
    this.capa = "",
  });

  // Este é um método de fábrica chamado "fromJson".
  // Ele é usado para criar um objeto Filme a partir de um mapa (json).
  factory Filme.fromJson(Map<String, dynamic> json) {
    // Dentro do método de fábrica, estamos retornando um novo objeto Filme.
    // E estamos preenchendo suas propriedades com os valores do mapa (json) fornecido.
    return Filme(
      id: json['id'],
      resumo: json['resumo'],
      duracao: json['duracao'],
      titulo: json['titulo'],
      capa: json['capa'],
    );
  }
}

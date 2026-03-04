-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           12.0.2-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.12.0.7122
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para bibliotec
CREATE DATABASE IF NOT EXISTS `bibliotec` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `bibliotec`;

-- Copiando estrutura para tabela bibliotec.tabela_curso
CREATE TABLE IF NOT EXISTS `tabela_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_curso: ~14 rows (aproximadamente)
INSERT INTO `tabela_curso` (`id`, `nome`) VALUES
	(1, 'Engenharia de Fundição'),
	(2, 'Engenharia de Soldagem'),
	(3, 'Superior de Tecnologia em Processos Metalúrgicos'),
	(4, 'Técnico em Metalurgia'),
	(5, 'Técnico em Desenvolvimento de Sistemas'),
	(6, 'Técnico em Administração'),
	(7, 'Construtor de Moldes e Ferramentas para Fundição'),
	(8, 'Projetista de Moldes e Ferramentas para Fundição'),
	(9, 'Assistente Administrativo'),
	(10, 'Auxiliar de Linha de Produção'),
	(11, 'Eletricista de Manutenção Eletroeletrônica'),
	(12, 'Instalador e Reparador de Equipamentos de Telecomunicações'),
	(13, 'Mecânico de Manutenção'),
	(14, 'Soldador');

-- Copiando estrutura para tabela bibliotec.tabela_livros
CREATE TABLE IF NOT EXISTS `tabela_livros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `capa_url` varchar(512) DEFAULT NULL,
  `genero` enum('manga','romance','populares','comedia','suspense','terror','academico') DEFAULT NULL,
  `publicado_ano` int(11) DEFAULT NULL,
  `criado_em` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_livros: ~91 rows (aproximadamente)
INSERT INTO `tabela_livros` (`id`, `titulo`, `autor`, `descricao`, `capa_url`, `genero`, `publicado_ano`, `criado_em`) VALUES
	(1, 'One Piece vol-1', 'Eiichiro Oda', 'O primeiro volume apresenta Monkey D. Luffy desde sua infância, quando admira Shanks e sua tripulação. Após comer a Gomu Gomu no Mi, ele ganha um corpo elástico, mas perde a capacidade de nadar. Anos depois, já adolescente, decide partir sozinho para os mares, mesmo sem navio ou tripulação, guiado apenas pelo sonho de encontrar o One Piece e se tornar o Rei dos Piratas. Nesse volume, Luffy enfrenta sua primeira inimiga, Alvida, mostrando seu estilo ingênuo, corajoso e otimista. Ele também conhece Roronoa Zoro, um caçador de piratas temido, preso injustamente pela Marinha. Luffy o liberta e tenta convencê-lo a se juntar à sua tripulação. O volume estabelece o espírito de aventura, liberdade e amizade que define toda a série.', 'https://m.media-amazon.com/images/I/61xOtH1kTsL._SY425_.jpg', 'manga', 1997, '2025-11-28 15:43:42'),
	(2, 'Chainsaw Man vol-1', 'Tatsuki Fujimoto', 'Denji vive uma vida miserável, preso a dívidas absurdas deixadas por seu pai, trabalhando como caçador de demônios para a Yakuza. Pochita, seu cão-demônio motosserra, é sua única companhia e fonte de força emocional. Em um momento de traição, Denji é assassinado pela máfia controlada por um demônio. Porém, Pochita sacrifica sua própria vida para fundir-se ao coração de Denji, ressuscitando-o como um híbrido capaz de transformar braços e cabeça em motores de motosserra. Após renascer, ele é encontrado pela misteriosa Makima, que oferece a ele uma vida melhor — desde que se torne um caçador de demônios do governo sob suas ordens. Esse volume apresenta a mistura de violência intensa, humor ácido e drama trágico que caracteriza a obra, além da inocência de Denji, que deseja apenas viver uma vida comum.', 'https://m.media-amazon.com/images/I/71wp0XTXsAL._AC_UF1000,1000_QL80_.jpg', 'manga', 2018, '2025-11-28 15:43:42'),
	(3, 'Jujutsu Kaisen Vol. 1', 'Gege Akutami', 'Yuji Itadori é um adolescente forte, mas sem ambições grandiosas. Tudo muda quando ele encontra um objeto amaldiçoado — o dedo de Sukuna, o mais poderoso e maligno dos espíritos amaldiçoados. Para salvar seu amigo, ele engole o dedo e se torna o receptáculo de Sukuna, algo considerado impossível e mortal. Em vez de ser executado imediatamente, ele é levado por Gojo Satoru à Escola Técnica de Jujutsu, onde é treinado para controlar Sukuna e ajudar no extermínio de maldições. O volume apresenta o trio principal (Yuji, Megumi e Nobara), as regras do mundo jujutsu e a constante luta entre vida e morte. A narrativa mistura ação rápida, terror sobrenatural e reflexões sobre a morte e o propósito de viver.', 'https://m.media-amazon.com/images/I/81TmHlRleJL.jpg', 'manga', 2018, '2025-11-28 15:43:42'),
	(4, 'Berserk Vol. 1', 'Kentaro Miura', 'O volume de abertura mergulha o leitor em um mundo medieval brutal e corrompido, onde demônios e humanos coexistem em violência constante. Guts é introduzido como um guerreiro solitário de passado traumático, marcado por uma infância violenta e carregando uma espada enorme capaz de cortar monstros ao meio. Ele vaga confrontando criaturas demoníacas e enfrentando o destino imposto pela Marca, um símbolo que atrai seres das trevas. O volume estabelece o tom sombrio da obra: temas como tragédia, instinto de sobrevivência, guerra, destino e ódio. A narrativa é intensa, cheia de detalhes visuais e violência que constroem o universo cruel de Miura.', 'https://m.media-amazon.com/images/I/61K0fW6l1-L._AC_UF1000,1000_QL80_.jpg', 'manga', 1989, '2025-11-28 15:43:42'),
	(5, 'My hero academia Vol. 1', 'Kōhei Horikoshi', 'Vivendo em uma sociedade onde poderes especiais são comuns, Izuku Midoriya sonha ser um herói, mas nasce sem um Quirk. Mesmo assim, ele estuda obsessivamente os heróis e registra tudo em cadernos. Após arriscar sua vida para salvar Bakugou, seu rival de infância, ele impressiona All Might, que vê nele o coração de um verdadeiro herói. All Might decide transmitir seu poder, o One For All, e inicia o difícil treinamento de Izuku para que ele consiga ingressar na U.A., a escola de heróis mais prestigiada do país. O volume acompanha sua transformação dolorosa, seus medos, sua determinação e o início de sua trajetória no mundo dos heróis.', 'https://m.media-amazon.com/images/I/81wkJuE7PpL._SY466_.jpg', 'manga', 2014, '2025-11-28 15:43:42'),
	(6, 'Tokyo ghoul Vol. 1', 'Sui Ishida', 'Kaneki Ken é um estudante introvertido e amante de livros. Sua vida muda drasticamente quando ele tem um encontro quase fatal com Rize, uma ghoul que o ataca. Para salvar sua vida, cirurgiões transplantam órgãos dela para Kaneki, transformando-o em um meio-ghoul — nem humano, nem monstro. Agora ele precisa aprender a conviver com sua nova fome por carne humana, seu conflito interno entre moralidade e sobrevivência, e sua descoberta de que as ghouls possuem sentimentos, medos e uma sociedade própria. O volume apresenta o Antiku, um café que serve como abrigo para ghouls pacíficos, e constrói um clima psicológico denso, mostrando a luta de Kaneki com sua identidade.', 'https://m.media-amazon.com/images/I/51gTbdvr9tL._SY445_SX342_ML2_.jpg', 'manga', 2012, '2025-11-28 15:43:42'),
	(7, 'Attack on titan Vol. 1', 'Hajime Isayama', 'O mundo é dominado por Titãs gigantescos que devoram humanos sem motivo aparente. A humanidade sobrevive dentro de enormes muralhas construídas há mais de um século. Eren Yeager, Mikasa e Armin vivem uma vida limitada, mas tranquila, até que um Titã colossal rompe a muralha e provoca uma invasão devastadora. O evento muda para sempre a vida de Eren, que jura eliminar todos os Titãs da face da Terra. O volume explora o desespero da humanidade, o caos da invasão, a dor das perdas e o nascimento da determinação de Eren. Ele se prepara para entrar no treinamento militar, onde passará por mudanças físicas e mentais profundas.', 'https://m.media-amazon.com/images/I/91F-m3Zm1xL._SY342_.jpg', 'manga', 2010, '2025-11-28 15:43:42'),
	(8, 'Bleach Vol. 1', 'Tite Kubo', 'Ichigo Kurosaki sempre pôde ver espíritos, mas tudo muda quando Rukia, uma shinigami, aparece perseguindo um hollow. Durante o ataque, ela fica ferida e transfere seus poderes para Ichigo, que precisa agir como substituto temporário. A partir daí, Ichigo aprende sobre almas, hollows, purificação e o papel dos shinigamis. O volume apresenta monstros espirituais, a Soul Society e o cotidiano de Ichigo tentando equilibrar escola, família e deveres sobrenaturais. Combinando humor, tensão e espiritualidade, o primeiro volume abre portas para um universo rico e cheio de batalhas icônicas.', 'https://m.media-amazon.com/images/I/516WLV8lFCL._SY445_SX342_ML2_.jpg', 'manga', 2001, '2025-11-28 15:43:42'),
	(9, 'Balela', 'Solaine Chioro', 'O livro conta a rotina e as vivências emocionais de adolescentes e jovens adultos lidando com dúvidas, relações turbulentas e descobertas sobre quem são. A narrativa explora temas como primeiras paixões, inseguranças internas, expectativas sociais e a busca por autoconhecimento. A história mostra como situações aparentemente comuns — amizades, brigas, escolhas escolares, expectativas familiares — moldam a personalidade e a forma de sentir de cada personagem. É um romance leve, sensível e muito próximo da realidade.', 'https://m.media-amazon.com/images/I/71Ig0iq-BKL._SY466_.jpg', 'romance', 2025, '2025-11-28 15:44:02'),
	(10, 'Quebrando o gelo', 'Hannah Grace', 'Uma história sobre duas pessoas com posturas opostas: uma reservada, fria ou extremamente racional, e outra espontânea, emotiva ou aberta ao mundo. Por motivos da vida — escola, trabalho, convivência forçada ou um projeto em comum — elas precisam se aproximar. Com o tempo, começam a derrubar as barreiras emocionais que haviam criado para se proteger de traumas do passado. O livro fala sobre vulnerabilidade, confiança, amadurecimento e a importância de permitir que alguém entre na sua vida.', 'https://m.media-amazon.com/images/I/81xhLdQciVL._SY342_.jpg', 'romance', 2023, '2025-11-28 15:44:02'),
	(11, 'Não é amor', 'Ali Hazelwood', 'Um romance profundo e necessário sobre reconhecer o que é afeto e o que é abuso. A história acompanha uma personagem (ou personagens) envolvida em um relacionamento que, à primeira vista, parece amoroso, mas revela comportamentos manipuladores, ciúme excessivo, chantagem emocional e dependência. O livro discute a dificuldade de identificar limites, o impacto do abuso psicológico e a jornada de recuperação e reconstrução da autoestima. É forte, sensível e cheio de reflexões sociais.', 'https://m.media-amazon.com/images/I/71Ec-mBlH4L._SY342_.jpg', 'romance', 2024, '2025-11-28 15:44:02'),
	(12, 'É assim que acaba', ' Colleen Hoover', 'A narrativa segue Lily Bloom, que tenta construir uma vida estável longe do passado difícil, marcado pela violência doméstica vivida pela mãe. Ao conhecer Ryle, um neurocirurgião charmoso, ela acredita ter encontrado o amor ideal. No entanto, comportamentos agressivos começam a surgir, colocando-a em um ciclo de abuso que ela prometeu nunca repetir. Paralelamente, o livro apresenta Atlas, seu primeiro amor, que representa segurança e compreensão. A história aborda traumas, relações abusivas, escolhas dolorosas e a coragem necessária para romper padrões familiares.', 'https://m.media-amazon.com/images/I/91r5G8RxqfL._SY342_.jpg', 'romance', 2018, '2025-11-28 15:44:02'),
	(13, 'Quinze dias', 'Vitor Martins', 'Ambientado no Brasil, o livro acompanha um adolescente com baixa autoestima e dificuldades sociais que vê sua vida mudar quando seu vizinho — por quem ele é secretamente apaixonado — vai passar 15 dias hospedado em sua casa. Durante esse período de convivência intensa, ele precisa lidar com inseguranças, preconceitos, autodescoberta e o medo de se abrir. A narrativa é sensível, representativa e fala sobre amor jovem, aceitação, empatia e o valor de ser verdadeiro consigo mesmo.', 'https://m.media-amazon.com/images/I/714yEGAjivL._SY342_.jpg', 'romance', 2022, '2025-11-28 15:44:02'),
	(14, 'Era uma vez um coração partido', 'Stephanie Garber', '“Era Uma Vez um Coração Partido” acompanha Evangeline Fox, uma garota que faz um pacto com o misterioso Príncipe dos Corações, Jacks, para impedir o casamento do seu grande amor. Mas o acordo tem um preço: ela precisa cumprir três pedidos que a envolvem em magia, segredos e perigos. Em um mundo de contos de fadas sombrios, Evangeline descobre que nem sempre se pode confiar no amor — e que Jacks pode ser tanto sua ruína quanto seu destino.', 'https://m.media-amazon.com/images/I/91tgztS06QL._SY342_.jpg', 'romance', 2022, '2025-11-28 15:44:02'),
	(15, 'A hipótese do amor', 'Ali Hazelwood', 'Ambientado no mundo acadêmico, o livro acompanha Olive, uma aluna de pós-graduação que entra em um acordo com Adam, um professor rígido e temido por todos: fingir um relacionamento para resolver questões pessoais e profissionais. O que começa como um acordo frio e sem emoção acaba se tornando uma relação baseada em respeito, descobertas e afeto sincero. O livro explora a pressão da vida científica, o machismo na academia, inseguranças internas e o processo de se permitir amar.', 'https://m.media-amazon.com/images/I/81LTEfXYgcL._SY342_.jpg', 'romance', 2022, '2025-11-28 15:44:02'),
	(16, 'Romance real', 'Clara Alves', 'A história segue uma jovem comum que, por acaso do destino, se envolve com alguém da realeza — um príncipe, herdeiro ou membro importante da família real. Ao entrar nesse mundo, ela descobre que glamour e poder vêm acompanhados de cobranças pesadas, segredos e expectativas sociais rígidas. Entre fofocas, escândalos e manchetes, o casal precisa aprender a equilibrar amor, identidade pessoal e a pressão do público. É uma narrativa sobre coragem, escolhas e o preço de amar alguém extraordinário.', 'https://m.media-amazon.com/images/I/81nxnpZqsSL._SY342_.jpg', 'romance', 2022, '2025-11-28 15:44:02'),
	(17, 'Auto da compadecida', 'Ariano Suassuna', 'Uma adaptação moderna do clássico nordestino, misturando humor popular, crítica social e reflexões sobre fé. Nesta releitura, João Grilo e Chicó continuam sendo dois sobreviventes inteligentes em meio à pobreza e às injustiças de uma pequena cidade do sertão. Com situações cômicas, personagens exagerados e dilemas morais, a história revisita julgamentos, milagres e trapaças que revelam o contraste entre religiosidade e desigualdade. A obra mantém o tom leve, mas provoca reflexões profundas sobre coragem, esperteza e humanidade.', 'https://m.media-amazon.com/images/I/71uib6VyNeL._SY342_.jpg', 'comedia', 2013, '2025-11-28 15:44:21'),
	(18, 'Mais que amigos?', 'Christina Lauren', 'Um romance sobre a fina linha entre amizade e amor. Dois amigos de longa data começam a perceber que a conexão entre eles é mais forte do que imaginavam. Entre conversas sinceras, inseguranças, medos de perder a amizade e momentos cheios de tensão romântica, os dois precisam decidir se arriscam transformar anos de convivência em um relacionamento verdadeiro. A narrativa trabalha amadurecimento emocional, vulnerabilidade e a descoberta de sentimentos que sempre estiveram ali, mas que só agora ganharam voz.', 'https://m.media-amazon.com/images/I/81W-7Rk5hnL._SY342_.jpg', 'comedia', 2023, '2025-11-28 15:44:21'),
	(19, 'Só mais uma cómedia romântica', 'Katelyn Doyle', 'Com humor e autocrítica, a protagonista tenta fugir de todos os clichês de filmes românticos... mas acaba vivendo exatamente eles. Entre encontros atrapalhados, situações exageradas e diálogos espirituosos, ela percebe que nem sempre a vida segue um roteiro. A história brinca com estereótipos do gênero, mas também fala sobre expectativas, autodescoberta e a beleza de se permitir viver o inesperado. Um romance divertido, caloroso e cheio de metalinguagem.', 'https://m.media-amazon.com/images/I/81qTmqeX4rL._SY342_.jpg', 'comedia', 2024, '2025-11-28 15:44:21'),
	(20, 'Mil passos ao sul', 'Camila Antunes', 'Um romance de jornada, no qual o protagonista parte em uma viagem ao sul em busca de respostas sobre seu passado, sua identidade e seus arrependimentos. Durante o caminho, encontra pessoas marcantes, revisita memórias dolorosas e é forçado a confrontar medos que sempre evitou. A estrada se torna metáfora de transformação e cura. Com narrativa sensível, o livro aborda perda, amadurecimento e a importância de recomeçar quando tudo parece perdido.', 'https://m.media-amazon.com/images/I/81EtZFswPGL._SY342_.jpg', 'comedia', 2025, '2025-11-28 15:44:21'),
	(21, 'A divida comédia', 'Dante Alighieri', 'O protagonista do livro A Divina Comédia é o próprio poeta Dante Alighieri que percorre uma viagem entre três instâncias completamente distintas: o Inferno, o Purgatório e o Paraíso.Ao longo do caminho, Dante vai cruzando com amigos e conhecidos, figuras públicas ou do universo pessoal do autor, e debatem sobre os mais variados temas.A odisseia é extremamente descritiva e contempla imensos detalhes visuais. Enquanto se encontra no inferno, Dante recebe a ajuda do poeta romano Virgílio, que serve como uma espécie de guia.Virgílio (70 a 19 a.C.), autor dos tempos de Júlio César, foi dos maiores poetas da Antiguidade, tendo escrito o clássico Eneida. Dante era um admirador profundo da poética de Virgílio, por isso é a ele que pede ajuda para percorrer o doloroso caminho.Quando está no céu, por sua vez, quem realiza o trabalho de acompanhamento é Beatriz, uma musa inspiradora que foi a paixão platônica de Dante durante a adolescência. Beatriz é símbolo do amor divino e é responsável por guiar o poeta para fora da selva.O poema possui três personagens principais: Dante, o protagonista que personifica o homem; Beatriz, que representa a fé; Virgílio, que pode ser considerado o símbolo da razão.', 'https://m.media-amazon.com/images/I/814q7QXghGL._SY466_.jpg', 'comedia', 2021, '2025-11-28 15:44:21'),
	(22, 'Acorda pra vida, Chloe Brown', 'Talia Hibbert', 'Chloe Brown decide que está cansada de sobreviver em vez de viver. Criando uma lista de tarefas para reinventar sua vida — desde fazer coisas espontâneas até encontrar um grande amor — ela acaba conhecendo Red, um artista gentil e cheio de histórias próprias. A relação entre os dois é construída aos poucos, com humor, conflitos emocionais e muita sensibilidade. O livro equilibra romance fofo com temas sérios, como cura emocional, autoconfiança e vulnerabilidade.', 'https://m.media-amazon.com/images/I/61sy3hD1YnL._SY342_.jpg', 'comedia', 2021, '2025-11-28 15:44:21'),
	(23, 'A preteridar', 'Ava Rani', 'A história acompanha alguém que sempre se sentiu deixado de lado: nos relacionamentos, nas amizades e até na própria família. Após um momento decisivo, a protagonista resolve assumir o controle e transformar sua vida. Entre erros, risadas, romances improváveis e reflexões sinceras, o livro fala sobre autoestima, amor-próprio e o processo de perceber que ser “preterido” não define quem você é — e que a própria narrativa pode ser reescrita.', 'https://m.media-amazon.com/images/I/41CWSR9-1pL._SY445_SX342_ML2_.jpg', 'comedia', 2025, '2025-11-28 15:44:21'),
	(24, 'Qualquer coisa entre nós', 'Juliana Giacobelli', 'Um romance intenso sobre dois jovens presos em uma relação indefinida. Eles oscilam entre amizade, atração e medo de assumir sentimentos reais, criando um laço profundo e confuso. A história aborda comunicação, traumas emocionais, expectativas e o desejo de algo que nunca é totalmente assumido. Com cenas delicadas e conflitos profundos, mostra como o amor às vezes surge no intervalo entre o que é dito e o que se sente.', 'https://m.media-amazon.com/images/I/51Xxq0EJzEL._SY445_SX342_QL70_ML2_.jpg', 'comedia', 2025, '2025-11-28 15:44:21'),
	(25, 'A vila dos pecados', 'Soraya Abuchaim', 'Um suspense em uma vila isolada onde cada habitante esconde um pecado do passado. Quando um assassinato acontece, todos se tornam suspeitos, e a investigação revela mentiras que sustentavam o lugar há décadas. A atmosfera é densa, com personagens moralmente ambíguos e reviravoltas que expõem culpa, rivalidade e segredos que ninguém gostaria de ver revelados. O final é marcado por impacto emocional e revelações surpreendentes.', 'https://m.media-amazon.com/images/I/91+byPhD7QL._SY342_.jpg', 'suspense', 2017, '2025-11-28 15:44:50'),
	(26, 'O mistério da casa verde', 'Moacyr Scliar', 'Jovens curiosos decidem investigar uma casa abandonada cercada de lendas sobre espíritos e desaparecimentos. Ao entrar no local, descobrem pistas, diários antigos e passagens ocultas que revelam um acontecimento terrível que a cidade inteira tentou enterrar. O suspense cresce de forma gradual, unindo investigação, tensão e momentos que brincam com o sobrenatural.', 'https://m.media-amazon.com/images/I/7163aXg1CiL._SY342_.jpg', 'suspense', 2008, '2025-11-28 15:44:50'),
	(27, 'A paciente silenciosa', 'Alex Michaelides', 'Após cometer um crime chocante, uma mulher para de falar completamente, mergulhando em um silêncio absoluto. Um psicólogo determinado acredita que pode entender seu trauma, e conforme se aproxima dela, descobre um labirinto de manipulação, dor e lembranças distorcidas. O livro combina suspense psicológico com um estudo profundo sobre mente humana e segredos que ninguém imagina.', 'https://m.media-amazon.com/images/I/413th2NQc8L._SY445_SX342_ML2_.jpg', 'suspense', 2019, '2025-11-28 15:44:50'),
	(28, 'Imagens estranhas', 'Uketsu', 'As ilustrações feitas por uma gestante e publicadas por seu marido em um blog escondem um alerta temeroso. O desenho que uma criança faz da própria casa carrega uma mensagem sombria. O retrato feito por uma vítima de assassinato em seus momentos finais conduz um detetive amador em uma caçada eletrizante.Com uma história estruturada por desenhos com aspecto infantil ― todos com sua própria pista perturbadora ―, Uketsu convida os leitores a montar o quebra-cabeça por trás de cada imagem e o grande arco que as conecta. Best-seller internacional com mais de três milhões de exemplares vendidos no Japão e direitos de publicação adquiridos em mais de trinta territórios, Imagens estranhas é um livro inquietante, em que elementos triviais assumem um sentido macabro e desenhos ingênuos escondem realidades aterrorizantes.', 'https://m.media-amazon.com/images/I/51nQXg1AkTL._SY445_SX342_ML2_.jpg', 'suspense', 2025, '2025-11-28 15:44:50'),
	(29, 'Mistério e suspense', 'Lucinda Berry', 'Hannah e Christopher são o retrato de um casal feliz, com carreiras bem-sucedidas e um casamento em total harmonia. Só faltava um único item nesse cenário perfeito: uma criança. Então, quando Janie, uma garotinha abandonada, é levada para o hospital em que ambos trabalham, ela parece ser a resposta a tudo aquilo que sempre sonharam. Christopher cria uma conexão instantânea com ela e convence Hannah de que eles deveriam adotá-la.Mas Janie não é uma criança comum. Pouco se sabe sobre o seu passado e, a julgar pelo seu comportamento perturbador, talvez seu psicológico afetado mostre que ela é muito mais do que seus novos pais são capazes de lidar, especialmente Hannah. Afinal, é na mãe que ela direciona toda a sua raiva e em quem parece descontar todos os traumas que carrega. Para Christopher, a quem a menina é completamente devota, ela guarda a sua face mais doce e angelical.', 'https://m.media-amazon.com/images/I/51lZG3q500L._SY445_SX342_ML2_.jpg', 'suspense', 2024, '2025-11-28 15:44:50'),
	(30, 'Jantar secreto', 'Raphael Montes', 'Um grupo de jovens, buscando dinheiro fácil, cria eventos clandestinos onde segredos, transgressões e práticas moralmente questionáveis acontecem. Conforme o esquema cresce, eles se veem envolvidos em algo muito mais sombrio do que imaginavam — uma estrutura de poder perigosa e perturbadora. O livro combina horror social, crítica moral e suspense psicológico.', 'https://m.media-amazon.com/images/I/71AeB1+8dZL._SY342_.jpg', 'suspense', 2016, '2025-11-28 15:44:50'),
	(31, 'O misterioso capa verde', 'Alexandre Lana Lins', 'Depois de sobreviver a um trauma terrível na infância, a protagonista tenta levar uma vida normal. Porém, quando sinais do agressor ou de alguém ligado a ele ressurgem, ela precisa enfrentar memórias que tentou apagar. O suspense trabalha medo, superação e coragem, criando uma tensão psicológica crescente até o clímax.', 'https://m.media-amazon.com/images/I/71c3jmKg-eL._SY342_.jpg', 'suspense', 2022, '2025-11-28 15:44:50'),
	(32, 'Uma mulher no escuro', 'Raphael Montes', 'Depois de sobreviver a um trauma terrível na infância, a protagonista tenta levar uma vida normal. Porém, quando sinais do agressor ou de alguém ligado a ele ressurgem, ela precisa enfrentar memórias que tentou apagar. O suspense trabalha medo, superação e coragem, criando uma tensão psicológica crescente até o clímax.', 'https://m.media-amazon.com/images/I/91OyxWEVdDL._SY342_.jpg', 'suspense', 2019, '2025-11-28 15:44:50'),
	(33, 'Como sobreviver a um filme de terror', 'Scarlett Dunmore', 'Entusiasta de filmes de terror, Charley está determinada a se manter discreta ao ser matriculada em um internato para meninas em uma ilha remota. Isto é, até que alguém comece a matar as alunas da turma do último ano! De elaboradas táticas de intimidação a cabeças decepadas em geladeiras, num piscar de olhos Charley está no centro de um filme de terror adolescente. E essa não é a única coisa alarmante que está acontecendo: ela agora vê os fantasmas!? Assombrada por suas colegas mortas e com todos começando a suspeitar dela, Charley decide fazer algo a respeito. Ela e sua única melhor amiga, Olive, vão resolver os assassinatos e descobrir quem está matando a turma antes da formatura. Charley só precisa que aqueles fantasmas irritantes fiquem quietos e lhe dêem uma mão. Um romance YA em ritmo acelerado sobre duas amigas tentando sobreviver ao último ano... literalmente! Perfeito para fãs de "Rua do Medo", "O clube da meia-noite" e da franquia "Pânico".', 'https://m.media-amazon.com/images/I/71p3pBlp+JL._SY466_.jpg', 'terror', 2024, '2025-11-28 15:45:10'),
	(34, 'narrativas do medo', 'Verena Cavalcante', 'Uma antologia que explora fobias, traumas e terror psicológico. Cada conto apresenta um tipo diferente de medo — desde presenças sobrenaturais até situações reais que mexem com o emocional. A escrita aposta no clima crescente de desespero e no impacto deixado após cada final.', 'https://m.media-amazon.com/images/I/81eBSH3aX-L._SY342_.jpg', 'terror', 2022, '2025-11-28 15:45:10'),
	(35, 'Mortina', 'Barbara Cantini', 'Uma história sombria, porém encantadora, sobre uma menina parecida com um zumbi que só deseja ser aceita. Entre aventuras em um casarão misterioso, encontros improváveis e descobertas surpreendentes, o livro mistura humor macabro e fantasia gótica. É uma história de aceitação, coragem e identidade.', 'https://m.media-amazon.com/images/I/51oFKGOgJOL._SY445_SX342_ML2_.jpg', 'terror', 2019, '2025-11-28 15:45:10'),
	(36, 'Terra dos sonhos e acaso', 'Filipe de Campos Ribeiro', 'Um terror surreal em que o protagonista perde a capacidade de distinguir sonho e realidade. Pesadelos ganham forma no mundo físico, trazendo símbolos perturbadores e situações que desafiam a lógica. Com atmosfera onírica e densa, o livro explora fragilidade mental, destino e o desconhecido.', 'https://m.media-amazon.com/images/I/41BSlAeHCcL._SY445_SX342_ML2_.jpg', 'terror', 2019, '2025-11-28 15:45:10'),
	(37, 'O entregador de bonecos', 'Donnefar Skedar', 'A Arte do Terror, Um projeto independente criado para divulgar contos de Terror de vários autores que começaram e que ainda fazem parte do site Recanto das Letras. O livro busca trazer contos antigos e novos de autores que talvez o leitor não reconheça, mas que ficaram sempre entre os 100 mais lidos da semana no site Recanto das Letras. Como alguns não fazem mais parte do site e outros permanecem somente no site, o livro tem a ambição de ampliar o total de leitores para este gênero que todos adoramos. Neste primeiro volume, estão os autores: Faby Crystall, E. N. Andrade, JC King e Donnefar Skedar. Todos os contos são de autoria própria e todo o projeto foi realizado de forma independente sendo publicado pelo selo independente Elemental Editoração.', 'https://m.media-amazon.com/images/I/81x279HF3yL._SY466_.jpg', 'terror', 2023, '2025-11-28 15:45:10'),
	(38, 'Terror horror e misterio', 'Machado de Assis', 'Uma obra que mistura três gêneros em narrativas marcadas pela intensidade. Criaturas, crimes, pesadelos e segredos dão forma a histórias curtas que deixam o leitor inquieto. A coletânea trabalha temas como paranoia, violência invisível e medo do desconhecido.', 'https://m.media-amazon.com/images/I/51YhgE40pKL._SY445_SX342_ML2_.jpg', 'terror', 2024, '2025-11-28 15:45:10'),
	(39, 'Cacofonia', 'Walison Vinicius', 'No dia 31 de outubro de 2024, o jornalista investigativo Higor Sandes recebe um dossiê de evidências sobre um caso que, a princípio, a polícia interpretou como um acidente fatal comum. No entanto, o material enviado pela vítima incluía um relato sinistro sobre uma suposta creepypasta e a especulação de que ela estava ciente de seu próprio destino mortal. Buscando esclarecer os fatos, ele decide ir mais fundo nessa história e isso se revela apenas a ponta do iceberg de um mistério que iria mudar para sempre a sua vida. No decorrer de cinco histórias macabras que se conectam, os sons se misturam em horror, conspiração, terror, obsessão e, acima de tudo, psique humana em ruídos, compondo uma verdadeira cacofonia para os ouvidos mais sensíveis.', 'https://m.media-amazon.com/images/I/71gGdey5P5L._SY522_.jpg', 'terror', 2025, '2025-11-28 15:45:10'),
	(40, 'Terra amaldiçoada', 'Douglas Lobo', 'Em uma região abandonada, eventos estranhos se repetem por gerações, sempre ligados a mortes misteriosas. Um grupo decide investigar e acaba enfrentando uma força maligna que manipula a natureza e a mente. A história cria um terror rural, cheio de atmosfera pesada, rituais antigos e reviravoltas sombrias.', 'https://m.media-amazon.com/images/I/51t7zwxaAcL._SY445_SX342_QL70_ML2_.jpg', 'terror', 2015, '2025-11-28 15:45:10'),
	(41, 'Quinze dias', 'Vitor Martins', 'Ambientado no Brasil, o livro acompanha um adolescente com baixa autoestima e dificuldades sociais que vê sua vida mudar quando seu vizinho — por quem ele é secretamente apaixonado — vai passar 15 dias hospedado em sua casa. Durante esse período de convivência intensa, ele precisa lidar com inseguranças, preconceitos, autodescoberta e o medo de se abrir. A narrativa é sensível, representativa e fala sobre amor jovem, aceitação, empatia e o valor de ser verdadeiro consigo mesmo.', 'https://m.media-amazon.com/images/I/714yEGAjivL._SY342_.jpg', 'populares', 2022, '2025-12-03 11:14:00'),
	(42, 'Era uma vez um coração partido', 'Stephanie Garber', '“Era Uma Vez um Coração Partido” acompanha Evangeline Fox, uma garota que faz um pacto com o misterioso Príncipe dos Corações, Jacks, para impedir o casamento do seu grande amor. Mas o acordo tem um preço: ela precisa cumprir três pedidos que a envolvem em magia, segredos e perigos. Em um mundo de contos de fadas sombrios, Evangeline descobre que nem sempre se pode confiar no amor — e que Jacks pode ser tanto sua ruína quanto seu destino.', 'https://m.media-amazon.com/images/I/91tgztS06QL._SY342_.jpg', 'populares', 2022, '2025-12-03 11:14:00'),
	(43, 'A hipótese do amor', 'Ali Hazelwood', 'Ambientado no mundo acadêmico, o livro acompanha Olive, uma aluna de pós-graduação que entra em um acordo com Adam, um professor rígido e temido por todos: fingir um relacionamento para resolver questões pessoais e profissionais. O que começa como um acordo frio e sem emoção acaba se tornando uma relação baseada em respeito, descobertas e afeto sincero. O livro explora a pressão da vida científica, o machismo na academia, inseguranças internas e o processo de se permitir amar.', 'https://m.media-amazon.com/images/I/81LTEfXYgcL._SY342_.jpg', 'populares', 2022, '2025-12-03 11:14:00'),
	(44, 'Romance real', 'Clara Alves', 'A história segue uma jovem comum que, por acaso do destino, se envolve com alguém da realeza — um príncipe, herdeiro ou membro importante da família real. Ao entrar nesse mundo, ela descobre que glamour e poder vêm acompanhados de cobranças pesadas, segredos e expectativas sociais rígidas. Entre fofocas, escândalos e manchetes, o casal precisa aprender a equilibrar amor, identidade pessoal e a pressão do público. É uma narrativa sobre coragem, escolhas e o preço de amar alguém extraordinário.', 'https://m.media-amazon.com/images/I/81nxnpZqsSL._SY342_.jpg', 'populares', 2022, '2025-12-03 11:14:00'),
	(45, 'Demon Slayer Vol. 1', 'Koyoharu Gotouge', 'Tanjiro Kamado tem sua vida destruída quando sua família é assassinada por demônios. Apenas sua irmã Nezuko sobrevive, mas transformada em um deles. Determinado a encontrar uma cura e vingar sua família, Tanjiro se junta aos Caçadores de Demônios. O volume apresenta o mundo sombrio da obra, a ligação entre irmãos e o início de uma jornada marcada por dor, empatia e coragem.', 'https://m.media-amazon.com/images/I/81ZNkhqRvVL.jpg', 'manga', 2016, '2025-12-03 11:20:00'),
	(46, 'Death Note Vol. 1', 'Tsugumi Ohba', 'Light Yagami encontra um caderno sobrenatural capaz de matar qualquer pessoa cujo nome seja escrito nele. Com o desejo de criar um mundo perfeito, ele assume o papel de juiz supremo. O surgimento do detetive L inicia um jogo psicológico intenso, onde inteligência, moralidade e poder entram em conflito.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTq0H1jplV5gBK8ddC_eDVaLVg45y8uhPNnA&s', 'manga', 2003, '2025-12-03 11:20:00'),
	(47, 'Fullmetal Alchemist Vol. 1', 'Hiromu Arakawa', 'Após uma tentativa proibida de trazer a mãe de volta à vida, os irmãos Edward e Alphonse Elric pagam um preço terrível. Em busca da Pedra Filosofal, eles entram em uma jornada que mistura alquimia, política, guerra e dilemas morais profundos.', 'https://m.media-amazon.com/images/I/717jjqR2M-L._UF1000,1000_QL80_.jpg', 'manga', 2001, '2025-12-03 11:20:00'),
	(48, 'Naruto Vol. 1', 'Masashi Kishimoto', 'Naruto Uzumaki é um jovem ninja rejeitado por sua vila por carregar dentro de si a Raposa de Nove Caudas. Sonhando em se tornar Hokage, ele enfrenta desafios, preconceito e batalhas que moldam sua identidade e valores.', 'https://m.media-amazon.com/images/I/91RpwagB7uL.jpg', 'manga', 1999, '2025-12-03 11:20:00'),
	(49, 'Hunter x Hunter Vol. 1', 'Yoshihiro Togashi', 'Gon Freecss descobre que seu pai está vivo e é um lendário Hunter. Determinado a encontrá-lo, Gon embarca em uma jornada perigosa repleta de testes, amizades e descobertas sobre o mundo e sobre si mesmo.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlSUU0u_BSMWEJulzYtJ_qRxRykLVEsFOT8Q&s', 'manga', 1998, '2025-12-03 11:20:00'),
	(50, 'Todas as suas imperfeições', 'Colleen Hoover', 'Um casal enfrenta crises profundas enquanto tenta lidar com expectativas, frustrações e promessas quebradas. A narrativa explora o peso do amor quando ele não é suficiente para resolver tudo.', 'https://images.dlivros.org/Colleen-Hoover/todas-suas-im-perfeicoes-colleen-hoover_large.webp', 'romance', 2019, '2025-12-03 11:21:00'),
	(51, 'O lado feio do amor', 'Colleen Hoover', 'Uma relação intensa marcada por paixão, erros e amadurecimento emocional. O livro discute limites, escolhas e o impacto do passado no presente.', 'https://m.media-amazon.com/images/I/81FEytag46L.jpg', 'romance', 2015, '2025-12-03 11:21:00'),
	(52, 'Depois daquele verão', 'Carley Fortune', 'Um reencontro inesperado traz à tona sentimentos antigos, arrependimentos e segredos não resolvidos. Um romance sensível sobre segundas chances.', 'https://m.media-amazon.com/images/I/81wkQljSoiL._AC_UF1000,1000_QL80_.jpg', 'romance', 2022, '2025-12-03 11:21:00'),
	(53, 'Os sete maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 'Uma estrela de Hollywood revela sua verdadeira história de amor, fama e sacrifícios. Um romance envolvente sobre identidade e escolhas.', 'https://m.media-amazon.com/images/I/91yEPgRcELL.jpg', 'romance', 2017, '2025-12-03 11:21:00'),
	(54, 'Todo esse tempo', 'Mikki Daughtry', 'Após uma perda trágica, dois jovens se aproximam enquanto lidam com o luto, a culpa e a esperança de recomeçar.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3YiFYP2ELiN7i8FS4dKv03_xDsj04GBbGCA&s', 'romance', 2020, '2025-12-03 11:21:00'),
	(55, 'Minha vida fora de série', 'Paula Pimenta', 'Uma adolescente precisa lidar com escola, amizades e paixões de forma leve e divertida, enquanto descobre quem realmente é.', 'https://m.media-amazon.com/images/I/81LY6nLXdmL._AC_UF1000,1000_QL80_.jpg', 'comedia', 2014, '2025-12-03 11:22:00'),
	(56, 'Confissões de uma garota excluída', 'Thalita Rebouças', 'Com humor e sensibilidade, a história acompanha os desafios de se sentir deslocada e aprender a se aceitar.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEFE7_ojU4hNQ4tIUbZktNbERHF2rQdKfeGQ&s', 'comedia', 2016, '2025-12-03 11:22:00'),
	(57, 'Eleanor & Park', 'Rainbow Rowell', 'Um romance jovem divertido e sensível sobre dois adolescentes improváveis que encontram conforto um no outro.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwO-bBXQbEVuJd0avb-X7NEX33bN0RtI668A&s', 'comedia', 2013, '2025-12-03 11:22:00'),
	(58, 'Fala sério, mãe!', 'Thalita Rebouças', 'Conflitos entre mãe e filha são retratados com humor, exageros e muita identificação.', 'https://br.web.img3.acsta.net/pictures/17/11/07/12/47/1819757.jpg', 'comedia', 2015, '2025-12-03 11:22:00'),
	(59, 'O diário de Bridget Jones', 'Helen Fielding', 'Uma mulher comum narra seus fracassos amorosos e profissionais com muito sarcasmo e humor.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMvSfYuCWyT5wkUKOVvYbBQgtRhXuVSw5pJg&s', 'comedia', 1996, '2025-12-03 11:22:00'),
	(60, 'Garota exemplar', 'Gillian Flynn', 'O desaparecimento de uma mulher revela mentiras profundas em um casamento aparentemente perfeito.', 'https://m.media-amazon.com/images/I/81sSyD75y6L.jpg', 'suspense', 2012, '2025-12-03 11:23:00'),
	(61, 'O homem de giz', 'C.J. Tudor', 'Mensagens codificadas da infância levam a segredos sombrios e crimes esquecidos.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOvcNkJFKqa71-tvL7lFmIRuK7TGZuG7r9KA&s', 'suspense', 2018, '2025-12-03 11:23:00'),
	(62, 'Verity', 'Colleen Hoover', 'Uma escritora descobre segredos perturbadores ao trabalhar para outra autora.', 'https://m.media-amazon.com/images/I/91SDZ2eUj+L._AC_UF1000,1000_QL80_.jpg', 'suspense', 2018, '2025-12-03 11:23:00'),
	(63, 'O silêncio da casa fria', 'Laura Purcell', 'Uma herança antiga esconde mistérios e mortes inexplicáveis.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQanJgjWKpcmY7MYAsuQYRFvo1L2UD3fxGK9w&s', 'suspense', 2017, '2025-12-03 11:23:00'),
	(64, 'A garota do lago', 'Charlie Donlea', 'Um crime antigo volta à tona e revela segredos enterrados há décadas.', 'https://m.media-amazon.com/images/I/81LRk6+p1HL.jpg', 'suspense', 2016, '2025-12-03 11:23:00'),
	(65, 'O cemitério', 'Stephen King', 'Uma família descobre que algumas coisas não devem ser trazidas de volta à vida.', 'https://m.media-amazon.com/images/I/8151ymQnnuL.jpg', 'terror', 1983, '2025-12-03 11:24:00'),
	(66, 'It: A coisa', 'Stephen King', 'Uma entidade maligna se alimenta dos medos de crianças em uma pequena cidade.', 'https://m.media-amazon.com/images/I/91g9Dvtf+jL._AC_UF1000,1000_QL80_.jpg', 'terror', 1986, '2025-12-03 11:24:00'),
	(67, 'A assombração da casa da colina', 'Shirley Jackson', 'Uma casa viva psicologicamente afeta todos que entram nela.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMrK-3zh2wVazIJSkGiKRrXVbjDNphjGDa6g&s', 'terror', 1959, '2025-12-03 11:24:00'),
	(68, 'Drácula', 'Bram Stoker', 'O clássico vampiro espalha terror e sedução pela Europa.', 'https://m.media-amazon.com/images/I/61MgodE1s0L._AC_UF1000,1000_QL80_.jpg', 'terror', 1897, '2025-12-03 11:24:00'),
	(69, 'Frankenstein', 'Mary Shelley', 'Uma criação científica desafia os limites da vida e da moral.', 'https://images.dlivros.org/Mary-W-Shelley/frankestein-mary-shelley_large.webp', 'terror', 1818, '2025-12-03 11:24:00'),
	(70, 'O poder do hábito', 'Charles Duhigg', 'O livro explora como hábitos são formados no cérebro e como eles influenciam nossa vida pessoal, profissional e social. A obra apresenta estudos científicos, casos reais e estratégias práticas para modificar padrões de comportamento, mostrando como pequenas mudanças podem gerar grandes transformações.', 'https://m.media-amazon.com/images/I/81drfTT9ZfL._SY342_.jpg', 'academico', 2012, '2025-12-03 11:30:00'),
	(71, 'Mindset', 'Carol S. Dweck', 'A psicóloga Carol Dweck apresenta o conceito de mentalidade fixa e mentalidade de crescimento. O livro demonstra como a forma de pensar influencia diretamente o aprendizado, o sucesso acadêmico e profissional, incentivando o desenvolvimento contínuo e a resiliência diante de desafios.', 'https://m.media-amazon.com/images/I/81D1T67ZflL._UF1000,1000_QL80_.jpg', 'academico', 2006, '2025-12-03 11:30:00'),
	(72, 'Como aprender melhor', 'Barbara Oakley', 'Baseado em neurociência e educação, o livro ensina técnicas eficazes para estudar, memorizar conteúdos e aprender assuntos complexos. A autora aborda procrastinação, foco, revisão espaçada e métodos práticos para melhorar o desempenho acadêmico.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmnPWpqsayAfwcp4CQaA_iENAUPWn5vW_aCA&s', 'academico', 2014, '2025-12-03 11:30:00'),
	(73, 'A arte de aprender', 'Josh Waitzkin', 'O autor compartilha lições aprendidas no xadrez e nas artes marciais para mostrar como desenvolver excelência no aprendizado. O livro foca em disciplina mental, adaptação, autoconhecimento e melhoria contínua.', 'https://online.fliphtml5.com/diovj/bsmz/files/large/a472d1538804781559141ef8f70deedf.webp?1741043663', 'academico', 2007, '2025-12-03 11:30:00'),
	(74, 'Aprendendo a aprender', 'Barbara Oakley', 'Uma abordagem prática sobre como o cérebro processa informações e como usar isso a favor dos estudos. O livro ensina técnicas como mapas mentais, prática deliberada e revisão ativa para potencializar o aprendizado.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlIuN5GtwN7XoNyoz41mytIxWzIg4SQUjuRw&s', 'academico', 2018, '2025-12-03 11:30:00'),
	(75, 'Essencialismo', 'Greg McKeown', 'A obra propõe focar no que realmente importa, eliminando excessos que atrapalham produtividade e aprendizado. O livro é amplamente utilizado em contextos acadêmicos e profissionais para melhorar foco e eficiência.', 'https://m.media-amazon.com/images/I/71HuZRl-XeL._AC_UF1000,1000_QL80_.jpg', 'academico', 2014, '2025-12-03 11:30:00'),
	(76, 'Inteligência emocional', 'Daniel Goleman', 'O livro apresenta a importância das emoções no aprendizado, nas relações e na tomada de decisões. A obra conecta psicologia, educação e desenvolvimento pessoal, mostrando que o sucesso vai além do QI.', 'https://m.media-amazon.com/images/I/91K3XYOReLL._AC_UF1000,1000_QL80_.jpg', 'academico', 1995, '2025-12-03 11:30:00'),
	(77, 'Rápido e devagar', 'Daniel Kahneman', 'O autor explica como o cérebro funciona por meio de dois sistemas de pensamento: um rápido e intuitivo, outro lento e analítico. O livro é fundamental para estudos de psicologia, economia e tomada de decisões.', 'https://m.media-amazon.com/images/I/61pt9lG-PvL.jpg', 'academico', 2011, '2025-12-03 11:30:00'),
	(78, 'A mente organizada', 'Daniel J. Levitin', 'O livro aborda como organizar informações, tempo e tarefas em um mundo sobrecarregado de estímulos. Com base na neurociência, apresenta estratégias para melhorar concentração, memória e produtividade nos estudos.', 'https://m.media-amazon.com/images/I/718PhjxSCGL._UF1000,1000_QL80_.jpg', 'academico', 2014, '2025-12-03 11:30:00'),
	(79, 'Metodologia científica', 'Eva Maria Lakatos', 'Livro acadêmico essencial que apresenta métodos e técnicas de pesquisa científica. Aborda tipos de pesquisa, elaboração de projetos, normas acadêmicas e construção de trabalhos científicos, sendo amplamente utilizado em universidades.', 'https://m.media-amazon.com/images/I/71hNm67iteL._AC_UF1000,1000_QL80_.jpg', 'academico', 2017, '2025-12-03 11:30:00'),
	(80, 'Matemática básica para estudantes', 'Gelson Iezzi', 'Livro didático voltado para o ensino da matemática fundamental, abordando operações básicas, frações, porcentagem, equações simples e raciocínio lógico. A obra utiliza exemplos práticos, exercícios progressivos e explicações claras para fortalecer a base matemática do estudante.', 'https://m.media-amazon.com/images/I/719btCDzYEL._AC_UF1000,1000_QL80_.jpg', 'academico', 2018, '2025-12-03 11:40:00'),
	(81, 'DevOps: integração e entrega contínua', 'Jez Humble', 'Livro de TI que aborda práticas de DevOps, automação de deploy, integração contínua e melhoria do fluxo de desenvolvimento de software.', 'https://m.media-amazon.com/images/I/81sWqReEqDL._UF1000,1000_QL80_.jpg', 'academico', 2016, '2025-12-03 11:40:00'),
	(82, 'História geral e do Brasil', 'Boris Fausto', 'Uma obra didática que apresenta os principais acontecimentos históricos do mundo e do Brasil. O livro contextualiza fatos políticos, sociais e econômicos, auxiliando estudantes a compreenderem processos históricos de forma crítica.', 'https://livrariaunesp.vtexassets.com/arquivos/ids/254388/Historia-Do-Brasil-Edicao-Atualizada-E-Ampliada-boris-fausto-edusp-9788531413520-1.jpg?v=638836054307370000', 'academico', 2014, '2025-12-03 11:40:00'),
	(83, 'Geografia: espaço e sociedade', 'Milton Santos', 'Livro didático que analisa a relação entre espaço geográfico, sociedade e economia. A obra aborda globalização, urbanização, meio ambiente e desenvolvimento sustentável, estimulando o pensamento crítico dos estudantes.', 'https://imgv2-1-f.scribdassets.com/img/document/312420961/original/00fcd688c0/1?v=1', 'academico', 2015, '2025-12-03 11:40:00'),
	(84, 'Java: como programar', 'Deitel & Deitel', 'Livro clássico da área de TI que ensina programação em Java desde os fundamentos até conceitos avançados, como orientação a objetos, exceções e interfaces gráficas.', 'https://m.media-amazon.com/images/I/81jdJ94mSbL.jpg', 'academico', 2017, '2025-12-03 11:40:00'),
	(85, 'Estruturas de dados e algoritmos', 'Narasimha Karumanchi', 'Livro técnico de TI focado em estruturas de dados e algoritmos, abordando listas, pilhas, filas, árvores, grafos e técnicas de otimização. Muito utilizado em cursos de ciência da computação e tecnologia da informação.', 'https://m.media-amazon.com/images/I/61CVP-MfUoL.jpg', 'academico', 2016, '2025-12-03 11:40:00'),
	(89, 'Lógica e pensamento crítico', 'Irving Copi', 'Livro didático que ensina fundamentos da lógica, argumentação e análise crítica. Auxilia estudantes a desenvolverem raciocínio lógico, interpretação de textos e capacidade de argumentar com clareza.', 'https://0.academia-photos.com/attachment_thumbnails/52317060/mini_magick20190123-28157-10uvfog.png?1548243652', 'academico', 2013, '2025-12-03 11:40:00'),
	(90, 'Código Limpo', 'Robert C. Martin', 'Um dos livros mais importantes da área de desenvolvimento de software. A obra ensina boas práticas de programação, organização de código, nomes significativos, tratamento de erros e princípios que tornam o código mais legível, sustentável e profissional. É amplamente utilizado em cursos técnicos e universitários.', 'https://m.media-amazon.com/images/I/4138uiy6ghL._AC_UF1000,1000_QL80_.jpg', 'academico', 2008, '2025-12-03 11:50:00'),
	(91, 'Engenharia de Software', 'Ian Sommerville', 'A obra aborda conceitos fundamentais da engenharia de software, incluindo levantamento de requisitos, modelagem, testes, manutenção e gerenciamento de projetos. É referência acadêmica e técnica para estudantes e profissionais da área de TI.', 'https://m.media-amazon.com/images/I/51VfUW8vWJL._AC_UF1000,1000_QL80_.jpg', 'academico', 2016, '2025-12-03 11:50:00'),
	(92, 'Banco de dados: projeto e implementação', 'Carlos Alberto Heuser', 'Livro técnico que apresenta conceitos de bancos de dados relacionais, modelagem entidade-relacionamento, normalização, SQL e implementação prática. Muito utilizado em cursos técnicos e de graduação em informática.', 'https://m.media-amazon.com/images/I/81xCWItccAL._AC_UF1000,1000_QL80_.jpg', 'academico', 2010, '2025-12-03 11:50:00'),
	(93, 'Redes de computadores', 'Andrew S. Tanenbaum', 'A obra explica o funcionamento das redes de computadores, protocolos, camadas OSI e TCP/IP, segurança e comunicação de dados. É um livro técnico essencial para estudantes de redes e infraestrutura de TI.', 'https://m.media-amazon.com/images/I/91uoaAYJkrL._AC_UF1000,1000_QL80_.jpg', 'academico', 2011, '2025-12-03 11:50:00'),
	(94, 'Sistemas operacionais modernos', 'Andrew S. Tanenbaum', 'Livro técnico que explora o funcionamento interno dos sistemas operacionais, incluindo processos, threads, gerenciamento de memória, sistemas de arquivos e segurança. Essencial para cursos técnicos e universitários de computação.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx5d7ELBn5xciOhAj-84tWaqC0uaJFx7BU9A&s', 'academico', 2015, '2025-12-03 11:50:00');

-- Copiando estrutura para tabela bibliotec.tabela_livros_favoritos
CREATE TABLE IF NOT EXISTS `tabela_livros_favoritos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aluno_id` (`aluno_id`,`livro_id`),
  KEY `livro_id` (`livro_id`),
  CONSTRAINT `tabela_livros_favoritos_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `tabela_usuario` (`id`),
  CONSTRAINT `tabela_livros_favoritos_ibfk_2` FOREIGN KEY (`livro_id`) REFERENCES `tabela_livros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_livros_favoritos: ~12 rows (aproximadamente)
INSERT INTO `tabela_livros_favoritos` (`id`, `aluno_id`, `livro_id`) VALUES
	(13, 1, 51),
	(14, 1, 52),
	(38, 1, 42),
	(39, 1, 43),
	(78, 3, 42),
	(84, 8, 2),
	(87, 8, 12),
	(88, 8, 4),
	(91, 8, 73),
	(92, 8, 75),
	(93, 8, 70),
	(94, 8, 72);

-- Copiando estrutura para tabela bibliotec.tabela_livros_reservados
CREATE TABLE IF NOT EXISTS `tabela_livros_reservados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_id` int(11) NOT NULL,
  `livro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `aluno_livro_unico` (`aluno_id`,`livro_id`),
  KEY `fk_reservado_livro` (`livro_id`),
  KEY `fk_reservado_aluno` (`aluno_id`),
  CONSTRAINT `fk_reservado_aluno` FOREIGN KEY (`aluno_id`) REFERENCES `tabela_usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_reservado_livro` FOREIGN KEY (`livro_id`) REFERENCES `tabela_livros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_livros_reservados: ~10 rows (aproximadamente)
INSERT INTO `tabela_livros_reservados` (`id`, `aluno_id`, `livro_id`) VALUES
	(53, 3, 2),
	(54, 3, 4),
	(56, 3, 26),
	(89, 8, 4),
	(91, 8, 2),
	(92, 8, 11),
	(96, 8, 73),
	(97, 8, 75);

-- Copiando estrutura para tabela bibliotec.tabela_login
CREATE TABLE IF NOT EXISTS `tabela_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aluno_id` int(11) NOT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `perfil` enum('aluno','admin') DEFAULT 'aluno',
  PRIMARY KEY (`id`),
  KEY `aluno_id` (`aluno_id`),
  CONSTRAINT `tabela_login_ibfk_1` FOREIGN KEY (`aluno_id`) REFERENCES `tabela_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_login: ~18 rows (aproximadamente)
INSERT INTO `tabela_login` (`id`, `aluno_id`, `senha`, `perfil`) VALUES
	(3, 1, '$2b$10$PwpbjA0kyhnmLdk.at47ceHyIPcHv6e/D1T5CHMQybrZkhiy3go2e', 'admin'),
	(10, 8, '$2b$10$MWFA9kgercsoz0eXG0T6aOqJy8DOEK091zGYMEfhK2qWgWVOzJa26', 'aluno'),
	(11, 11, '$2b$10$XJ6M3T4P5N8Q0Y7Y9Kp6M2R1L8Z0H4C1E5B7S3FJY8ZQ9U2K', 'aluno'),
	(12, 12, '$2b$10$L6QZ0Yp8X5M2N4KJ3Y7C1B9S8H0T6PZ4R5EJY9U7K3F1M', 'aluno'),
	(13, 13, '$2b$10$H9M6Y7PZ0N8T5B4C3JXK1E2QYF6L4Z5R8U9S0M7K', 'aluno'),
	(14, 14, '$2b$10$M0JZ6K4QY1P7F9N5X8S3E2RZB6L0H4Y8T9C7U', 'aluno'),
	(15, 15, '$2b$10$5T9Z4N6Q7M0X3P8B2Y1H6C0JY4KZ8R5F9U7L', 'aluno'),
	(16, 16, '$2b$10$Z4M6P0H9B8X1F2QY7KJ5C3R4N8U0S6Y9T', 'aluno'),
	(17, 17, '$2b$10$9M6KZ0T8B2F7Y4Q5J1C3R6H8N0P4Y9X', 'aluno'),
	(18, 18, '$2b$10$0Z8B1J5Q2N6H9T4P7C3F8M4K6YRX', 'aluno'),
	(19, 19, '$2b$10$K4H8B9Z5Q6C7Y2P1T0N3FJ6R4M', 'aluno'),
	(20, 20, '$2b$10$Z5Q8T4H0B9Y3J7F6P1N6M2KCR', 'aluno'),
	(21, 21, '$2b$10$Q8B4Z0T7H1M2P6F9Y3J5K6CNR', 'aluno'),
	(22, 22, '$2b$10$P9Y2Z6H4M8Q0F7T1C5B3KJNR', 'aluno'),
	(23, 23, '$2b$10$H8Z6M9Y2Q5P1F4B0T7C3KJNR', 'aluno'),
	(24, 8, '$2b$10$E6QpJm0k3Y0O9Z2H6cKkUeN2cYJ7YJZxZ1z6p8q1YyC4Yx3pG2Y2K', 'aluno'),
	(25, 9, '$2b$10$Qf8KxYx5Zt7B0YyP8F7E2O5nYzC9M0R1m6pU9LJY5Y7J6K8M3B1m', 'aluno'),
	(26, 10, '$2b$10$B8KZ3X0kYp4T5K1nZxM0Z6Q1M8L4WJYQH8C9JZpK6T3P5K2X9G', 'aluno');

-- Copiando estrutura para tabela bibliotec.tabela_usuario
CREATE TABLE IF NOT EXISTS `tabela_usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `curso_id` int(11) NOT NULL,
  `foto_perfil` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `CPF` (`CPF`),
  KEY `curso_id` (`curso_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_usuario: ~17 rows (aproximadamente)
INSERT INTO `tabela_usuario` (`id`, `nome`, `CPF`, `email`, `curso_id`, `foto_perfil`) VALUES
	(1, 'Admin', '55522233311', 'admin@funcionario.senai.br', 1, NULL),
	(8, 'Gabriel Sousa', '90535502834', 'gabriel.s.duarte8@aluno.senai.br', 9, NULL),
	(9, 'Ana Clara Silva', '12345678901', 'ana.clara@aluno.senai.br', 1, NULL),
	(10, 'Bruno Henrique Costa', '23456789012', 'bruno.henrique@aluno.senai.br', 2, NULL),
	(11, 'Carla Pereira', '34567890123', 'carla.pereira@aluno.senai.br', 3, NULL),
	(12, 'Diego Fernandes', '45678901234', 'diego.fernandes@aluno.senai.br', 4, NULL),
	(13, 'Eduardo Gomes', '56789012345', 'eduardo.gomes@aluno.senai.br', 5, NULL),
	(14, 'Fernanda Oliveira', '67890123456', 'fernanda.oliveira@aluno.senai.br', 6, NULL),
	(15, 'Gabriela Martins', '78901234567', 'gabriela.martins@aluno.senai.br', 7, NULL),
	(16, 'Hugo Santos', '89012345678', 'hugo.santos@aluno.senai.br', 8, NULL),
	(17, 'Isabela Rocha', '90123456789', 'isabela.rocha@aluno.senai.br', 9, NULL),
	(18, 'João Vitor Lima', '01234567890', 'joao.vitor@aluno.senai.br', 1, NULL),
	(19, 'Larissa Alves', '11223344556', 'larissa.alves@aluno.senai.br', 2, NULL),
	(20, 'Marcelo Souza', '22334455667', 'marcelo.souza@aluno.senai.br', 3, NULL),
	(21, 'Natália Ferreira', '33445566778', 'natalia.ferreira@aluno.senai.br', 4, NULL),
	(22, 'Otávio Cunha', '44556677889', 'otavio.cunha@aluno.senai.br', 5, NULL),
	(23, 'Priscila Dias', '55667788990', 'priscila.dias@aluno.senai.br', 6, NULL);

-- Copiando estrutura para tabela bibliotec.tabela_verificacao
CREATE TABLE IF NOT EXISTS `tabela_verificacao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `criado_em` datetime DEFAULT current_timestamp(),
  `expiracao` datetime NOT NULL,
  `usado` tinyint(1) DEFAULT 0,
  `tipo` enum('cadastro','recuperacao') DEFAULT 'cadastro',
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

-- Copiando dados para a tabela bibliotec.tabela_verificacao: ~1 rows (aproximadamente)
INSERT INTO `tabela_verificacao` (`id`, `email`, `codigo`, `criado_em`, `expiracao`, `usado`, `tipo`) VALUES
	(24, 'gabriel.s.duarte8@aluno.senai.br', '785124', '2025-12-15 21:30:32', '2025-12-15 21:40:32', 0, 'recuperacao');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

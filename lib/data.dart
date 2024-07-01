import 'package:secret_story/modeles/candidat.dart';
import 'package:secret_story/modeles/vote.dart';

final List<Vote> lastVotes = [
  Vote(
    id: 1,
    candidats: [
      CandidatVote(candidatId: '1003', pourcentage: 22.4),
      CandidatVote(candidatId: '1006', pourcentage: 47.2),
      CandidatVote(candidatId: '1009', pourcentage: 30.4),
    ],
  ),
  Vote(
    id: 2,
    candidats: [
      CandidatVote(candidatId: '1003', pourcentage: 37.7),
      CandidatVote(candidatId: '1006', pourcentage: 32),
      CandidatVote(candidatId: '1010', pourcentage: 30.3),
    ],
  ),
  Vote(
    id: 3,
    candidats: [
      CandidatVote(candidatId: '1002', pourcentage: 40),
      CandidatVote(candidatId: '1008', pourcentage: 50),
      CandidatVote(candidatId: '1013', pourcentage: 10),
    ],
  ),
];

final Map<String, Candidat> dummyData = {
  '1000': Candidat(
      id: '1000',
      isActive: true,
      country: 'BJ',
      description:
          'Ce passionné de mode de 27 ans, sympathique et joueur, est aussi un grand séducteur, stratège, extraverti et très sûr de lui. Sa particularité : il adore les défis.',
      prenom: 'Ak-ram'),
  '1001': Candidat(
      id: '1001',
      isActive: true,
      country: 'CI',
      description:
          'Cet Ivoirien de 28 ans est prêt à tout pour gagner le jeu. Très stratège, il n\'hésitera pas à faire appel à ses talents de séduction pour découvrir tous les secrets de la villa.',
      prenom: 'Ange'),
  '1002': Candidat(
      id: '1002',
      isActive: true,
      country: 'CI',
      description:
          'Malgré ses 26 ans, Awa n’a peur de rien, elle aime la compétition. Ses looks extravagants démontrent une personnalité extravertie et déjantée.',
      prenom: 'Awa'),
  '1003': Candidat(
      id: '1003',
      isActive: true,
      country: 'CG',
      description:
          'Âgée de 32 ans, elle peut paraître réservée de prime abord, mais elle devient rapidement sociable, solaire et rigolote passés les premiers contacts.',
      prenom: 'Beriche'),
  '1004': Candidat(
      id: '1004',
      isActive: true,
      country: 'CM',
      description:
          'Du haut de ses 43 ans, le doyen de la bande est papa de quatre filles qui lui ont appris la douceur. Il est raisonnable et chaleureux.',
      prenom: 'Emmanuel'),
  '1005': Candidat(
      id: '1005',
      isActive: true,
      country: 'BJ',
      description:
          'Les jumeaux de 35 ans sont des « bonnes bouilles » qui rayonnent d’une belle énergie. Ils sont très sympathiques et ont un excellent sens de l’humour.',
      prenom: 'Grace et Gloire'),
  '1006': Candidat(
      id: '1006',
      isActive: true,
      country: 'GN',
      description:
          'Cette grande gueule de 28 ans ne passe pas inaperçue avec son fort caractère. Elle parle fort, elle prend de la place, mais c’est avant tout une personne très généreuse et sensible.',
      prenom: 'Kaaty'),
  '1007': Candidat(
      id: '1007',
      isActive: true,
      country: 'NE',
      description:
          'D\'apparence réservé et doux, ce jeune Nigérien de 27 ans sait montrer son côté clown quand il est en confiance.',
      prenom: 'Kitari'),
  '1008': Candidat(
      id: '1008',
      isActive: true,
      country: 'SN',
      description:
          'Les jumelles de 33 ans sont fun et drôles, mais ne vous laissez pas avoir par leurs sourires, elles sont aussi très motivées pour gagner.',
      prenom: 'Ma et Mota'),
  '1009': Candidat(
      id: '1009',
      isActive: true,
      country: 'ML',
      description:
          'À 27 ans, c\'est une battante qui n\'a peur de rien. Sa personnalité un peu solaire peut paraître « fofolle », mais c\'est avant tout une personne drôle, ouverte d\'esprit et sûre d\'elle.',
      prenom: 'Maimouna'),
  '1010': Candidat(
      id: '1010',
      isActive: false,
      country: 'TG',
      description:
          'La Togolaise de 30 ans possède une personnalité très maternelle ; elle aime prendre soin des autres. Cela ne l\'empêche pas d\'être également très rayonnante.',
      prenom: 'Marlène'),
  '1011': Candidat(
      id: '1011',
      isActive: true,
      country: 'BF',
      description:
          'Cette jeune femme de 26 ans est très pétillante et bienveillante. Elle peut parfois se montrer un peu obstinée, car elle sait ce qu’elle veut.',
      prenom: 'Nika'),
  '1012': Candidat(
      id: '1012',
      isActive: false,
      country: 'MG',
      description:
          'Le bon copain du groupe, âgé de 27 ans, est sympa, cool, sociable et généreux. Il demeure toutefois déterminé à remporter le jeu, même s\'il peut paraître parfois impatient.',
      prenom: 'Tobias'),
  '1013': Candidat(
      id: '1013',
      isActive: true,
      country: 'CD',
      description:
          'La bonne copine de 27 ans est solaire et a une belle énergie. Très sympa, elle n\'en est pas moins joueuse et prête à tout pour l\'emporter.',
      prenom: 'Tracy'),
  '1014': Candidat(
      id: '1014',
      isActive: true,
      country: 'GA',
      description:
          'Ce jeune homme empathique de 28 ans est d\'une grande sociabilité. Il possède également un côté joueur et séducteur. Il ne reculera devant rien pour parvenir à ses fins pendant l\'aventure.',
      prenom: 'Yann-Amir'),
};

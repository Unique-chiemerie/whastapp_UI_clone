class Userinfo {
  final String imagelink;
  final String username;
  final String textpeek;
  final String activeDate;

  const Userinfo(
      {required this.imagelink,
      required this.textpeek,
      required this.username,
      required this.activeDate});
}

List<Userinfo> userList = const [
  Userinfo(
      imagelink: 'https://img.icons8.com/?size=96&id=Gg4msLAVHgdE&format=png',
      textpeek: 'Hey wanna go fight momoshiki brb bro...',
      username: 'Lord 7th',
      activeDate: 'Yesterday'),
  Userinfo(
      imagelink: 'https://img.icons8.com/?size=96&id=57324&format=png',
      textpeek:
          "TF is wrong with you kiddo,don't make me come to your dimension...",
      username: 'Ricky boi',
      activeDate: '3:30'),
  Userinfo(
      imagelink: 'https://img.icons8.com/?size=96&id=118497&format=png',
      textpeek: 'Bro how was the new updates we rolled in?',
      username: 'Facebook',
      activeDate: '2:00'),
  Userinfo(
      imagelink: 'https://img.icons8.com/?size=96&id=AZOZNnY73haj&format=png',
      textpeek: 'Hey man your repository is blowing up',
      username: 'Github',
      activeDate: 'Yesterday'),
  Userinfo(
      imagelink: 'https://img.icons8.com/?size=96&id=19318&format=png',
      textpeek: 'How would you like to have your animation blow up',
      username: 'Yt mah bro',
      activeDate: '7:00'),
  Userinfo(
      imagelink: 'https://img.icons8.com/?size=100&id=phOKFKYpe00C&format=png',
      textpeek: 'so how bout we launch earth to mars instead?',
      username: 'Elon',
      activeDate: 'yesterday')
];

class Userstatus {
  final String name;
  final String time;
  const Userstatus({required this.name, required this.time});
}

List<Userstatus> statuslist = const [
  Userstatus(name: 'Ricky boi', time: '10 minutes ago'),
  Userstatus(name: 'Elon', time: 'Today,5:20pm'),
  Userstatus(name: 'Github', time: 'Yesterday,1:am'),
  Userstatus(name: 'Yt mah bro', time: '4 minutes ago'),
];

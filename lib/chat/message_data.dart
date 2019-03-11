enum MessageType {
  SYSTEM,//系统消息
  PUBLIC,//公共消息
  CHAT,//私聊
  GROUP//群聊
}

class MessageData {
  //头像
  String avatar;
  //主标题
  String title;
  //子标题
  String subTitle;
  //消息时间
  DateTime time;
  //消息类型
  MessageType type;

  MessageData(this.avatar,this.title,this.subTitle,this.time,this.type);
}

List<MessageData> messageData = [
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥',
      '突然想到的',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦',
      '机器猫!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
  //添加更多聊天消息数据
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥2',
      '突然想到的2',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦2',
      '机器猫2!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥3',
      '突然想到的3',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦3',
      '机器猫3!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥4',
      '突然想到的4',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦4',
      '机器猫4!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥5',
      '突然想到的5',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦5',
      '机器猫5!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥6',
      '突然想到的6',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦6',
      '机器猫6!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1544070910437&di=86ffd13f433c252d4c49afe822e87462&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%3D580%2Fsign%3Debf3e26b1a4c510faec4e21250582528%2F0cf431adcbef76092781a53c2edda3cc7dd99e8e.jpg',
      '一休哥7',
      '突然想到的7',
      DateTime.now(),
      MessageType.CHAT
  ),
  MessageData(
      'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540403282649&di=c4f237332e6bf94546c950817699c2fd&imgtype=0&src=http%3A%2F%2Fimg5q.duitang.com%2Fuploads%2Fitem%2F201504%2F11%2F20150411H0128_PHr4z.jpeg',
      '多拉a梦7',
      '机器猫7!!!',
      DateTime.now(),
      MessageType.CHAT
  ),
];

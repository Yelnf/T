class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final List<String> tags;
  final int price;
  RoomListItemData(
      this.title, this.subTitle, this.imageUrl, this.tags, this.price, this.id);
}

List<RoomListItemData> datalist = [
  RoomListItemData(
      '朝阳门南大街 2室1厅 8300元',
      '二室/114/东|北/朝阳门南大街',
      'https://img1.baidu.com/it/u=440576062,3354796921&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
      ['近地铁', '随时看房'],
      1200,
      'roomDtail/1'),
  RoomListItemData(
      '整租 · CBD总部公寓二期 临近国贸 精装修 随时入住',
      '一室/110/西/CBD总部公寓二期',
      'https://img1.baidu.com/it/u=2435565153,1011138092&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
      ['近地铁', '随时看房', '新上'],
      1200,
      'roomDtail/1'),
  RoomListItemData(
      '朝阳门南大街 2室1厅 8300元',
      '二室/114/东|北/朝阳门南大街',
      'https://img1.baidu.com/it/u=440576062,3354796921&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
      ['近地铁', '随时看房'],
      1200,
      'roomDtail/1'),
  RoomListItemData(
      '整租 · CBD总部公寓二期 临近国贸 精装修 随时入住',
      '一室/110/西/CBD总部公寓二期',
      'https://img1.baidu.com/it/u=2435565153,1011138092&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500',
      ['近地铁', '随时看房', '新上'],
      1200,
      'roomDtail/1'),
];

class Item {
  String _seller, _type, _realPrice, _image, _offPrice, _quantity, _desc, _off;
  Item(this._seller, this._type, this._image, this._offPrice, this._realPrice,
      this._quantity, this._desc, this._off);
  String get realPrice => _realPrice;
  String get offPrice => _offPrice;
  String get quantity => _quantity;
  String get off => _off;
  String get seller => _seller;
  String get desc => _desc;
  String get image => _image;
}
List<String> images = [
'assets/images/garlic.png',
'assets/images/bell_pepper.png',
'assets/images/cauliflower.png',
'assets/images/ginger.png',
'assets/images/potatoes.png',
];

List<String> titles = [
'Garlic',
'Bell Pepper',
'Cauliflower',
'Ginger',
'Potatoes',
];

List<String> descriptions = [
'Each, Price',
'1kg, Price',
'Each, Price',
'1kg, Price',
'Each, Price',
];

List<String> prices = [
'\$0.64',
'\$2.98',
'\$2.86',
'\$4.99',
'\$0.66',
];

String selectedImage = '';
String Title = '';
String Description = '';
String Price = '';

    if (widget.counter < images.length) {
      selectedImage = images[widget.counter];
      Title = titles[widget.counter];
      Description = descriptions[widget.counter];
      Price = prices[widget.counter];
    } else {}

#  Introduction

Tag is a widget that simplify the process of creating a tag for any given widget. Just pass the string of the tag and Tag widget will position the tag above the desired widget.

# Basic Usage

The most simple usage is just wrap the widget that you want to be tagged in a Tag widget.

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Tag(
            child: Container(
              color: Colors.red,
              height: 200,
              width: 200,
            ),
            text: 'A red container',
            textStyle: TextStyle(
              color: Colors.white,
            ),
            color: Color(0xFFFF2D92),
            labelDecoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

This simple step will already configure the Tag overlay for use.

The example will produce something like this:

![enter image description here](https://i.ibb.co/NVnGShm/1.png)

You can use Tag widget with any widget of your choice. Here we have another example using a CircleAvatar.

```
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: Tag(
            rightPadding: 12,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://t1.gstatic.com/images?q=tbn:ANd9GcSZqF3OGhXYqL8DSbLynQ-qA2EIniPAljZXhUTZ8Ay6f6g-um21wsmJsBkeLkjW'),
            ),
            text: 'Lewis Hamilton',
            textStyle: TextStyle(
              color: Colors.white,
            ),
            color: Colors.grey,
            labelDecoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4),
                topLeft: Radius.circular(4),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

And produces this:

![enter image description here](https://i.ibb.co/yXtrk17/2.png)

# Customisation
There are many types of configurations that can be done to the Tag widget. You can configure spacing, tag decoration and much more. Just check the Tag constructor to see all possibilities. Missing any customisation? Please file a bug and i will be more than happy to work on it.

## Todo

- [ ] Tests
- [ ] Add more options to the tip of the Tag

## Suggestions & Bugs

For any suggestions or bug report please head to [issue tracker][tracker].

[tracker]: https://github.com/rodrigobastosv/tag/issues
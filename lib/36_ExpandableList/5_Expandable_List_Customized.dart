import 'package:flutter/material.dart';

void main() => runApp(ExpandableListCustomizedRun());

class ExpandableListCustomizedRun extends StatelessWidget {

  void PopAlert(BuildContext context){
    var AD=new AlertDialog(
      title:Text("Tap Detected!"),
      content:Text("ListTile Tapped!"),
    );
    showDialog(
        context:context,
        child: AD
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Customized Expandable List ",
      home:Scaffold(
        appBar: AppBar(
          title: Text('Customized Expandable List'),
        ),
        body:
         ListView(
           children: <Widget>[
             Column(
               children:<Widget>[
                 SizedBox(height: 20,),
                 Text(
                   "Select Wanted Option!",
                   style: TextStyle(
                     color: Colors.red,
                     fontSize: 24,
                   ),
                 ),
                 SizedBox(height: 10,),
                 ExpansionTile(
                   leading: new Icon(Icons.check_box),
                   headerBackgroundColor: Colors.teal,
                   iconColor: Colors.white,
                   backgroundColor: Colors.teal[100],
                   title:
                   Container(
                     child:
                     RichText(
                       text:TextSpan(
                         children: [
                           TextSpan(
                             text:"Exapandable List",
                             style: TextStyle(
                               color: Colors.white,
                               fontFamily: "PT Mono",
                             ),
                           ),
                           TextSpan(
                             text:"     New!",
                             style: TextStyle(
                               color: Colors.red,
                               fontFamily: "Lobster",
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   children: <Widget>[
                     Card(
                       color:Colors.grey[200],
                       child:
                       ListTile (
                         leading: new Icon(Icons.check_box),
                         title: Text (
                           "Expandable List",
                           style: TextStyle(
                             fontFamily: "Raleway",
                           ),
                         ),
                         subtitle: Text (
                           "Exapandable List",
                           style: TextStyle(
                             fontFamily: "PT Mono",
                           ),
                         ),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     ),
                     Card(
                       color:Colors.grey[200],
                       child:
                       ListTile (
                         leading: new Icon(Icons.check_box),
                         title: Text (
                           "Expandable List",
                           style: TextStyle(
                             fontFamily: "Raleway",
                           ),
                         ),
                         subtitle: Text (
                           "Exapandable List",
                           style: TextStyle(
                             fontFamily: "PT Mono",
                           ),
                         ),
                         onTap: (){
                           PopAlert(context);
                         },
                       ),
                     ),


                   ],
                 ),

               ],
             ),
           ],
         )
      ),
    );
  }
}


const Duration _kExpand = Duration(milliseconds: 200);
class ExpansionTile extends StatefulWidget {

  const ExpansionTile({
    Key key,
    this.headerBackgroundColor,
    this.leading,
    @required this.title,
    this.backgroundColor,
    this.iconColor,
    this.onExpansionChanged,
    this.children = const <Widget>[],
    this.trailing,
    this.initiallyExpanded = false,
  })  : assert(initiallyExpanded != null),
        super(key: key);

  final Widget leading;
  final Widget title;
  final ValueChanged<bool> onExpansionChanged;
  final List<Widget> children;
  final Color backgroundColor;
  final Color headerBackgroundColor;
  final Color iconColor;
  final Widget trailing;
  final bool initiallyExpanded;

  @override
  _ExpansionTileState createState() => _ExpansionTileState();
}

class _ExpansionTileState extends State<ExpansionTile>
    with SingleTickerProviderStateMixin {
  static final Animatable<double> _easeOutTween =
  CurveTween(curve: Curves.easeOut);
  static final Animatable<double> _easeInTween =
  CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
  Tween<double>(begin: 0.0, end: 0.5);

  final ColorTween _borderColorTween = ColorTween();
  final ColorTween _headerColorTween = ColorTween();
  final ColorTween _iconColorTween = ColorTween();
  final ColorTween _backgroundColorTween = ColorTween();

  AnimationController _controller;
  Animation<double> _iconTurns;
  Animation<double> _heightFactor;
  Animation<Color> _borderColor;
  Animation<Color> _headerColor;
  Animation<Color> _iconColor;
  Animation<Color> _backgroundColor;

  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: _kExpand, vsync: this);
    _heightFactor = _controller.drive(_easeInTween);
    _iconTurns = _controller.drive(_halfTween.chain(_easeInTween));
    _borderColor = _controller.drive(_borderColorTween.chain(_easeOutTween));
    _headerColor = _controller.drive(_headerColorTween.chain(_easeInTween));
    _iconColor = _controller.drive(_iconColorTween.chain(_easeInTween));
    _backgroundColor =
        _controller.drive(_backgroundColorTween.chain(_easeOutTween));

    _isExpanded =
        PageStorage.of(context)?.readState(context) ?? widget.initiallyExpanded;
    if (_isExpanded) _controller.value = 1.0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse().then<void>((void value) {
          if (!mounted) return;
          setState(() {
            // Rebuild without widget.children.
          });
        });
      }
      PageStorage.of(context)?.writeState(context, _isExpanded);
    });
    if (widget.onExpansionChanged != null)
      widget.onExpansionChanged(_isExpanded);
  }

  Widget _buildChildren(BuildContext context, Widget child) {
    final Color borderSideColor = _borderColor.value ?? Colors.transparent;
    final Color titleColor = _headerColor.value;

    return Container(
      decoration: BoxDecoration(
          color: _backgroundColor.value ?? Colors.transparent,
          border: Border(
            top: BorderSide(color: borderSideColor),
            bottom: BorderSide(color: borderSideColor),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          IconTheme.merge(
            data: IconThemeData(color: _iconColor.value),
            child: Container(
              color: widget.headerBackgroundColor ?? Colors.black,
              child: ListTile(
                onTap: _handleTap,
                leading: widget.leading,
                title: DefaultTextStyle(
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: titleColor),
                  child: widget.title,
                ),
                trailing: widget.trailing ??
                    RotationTransition(
                      turns: _iconTurns,
                      child: Icon(
                        Icons.expand_more,
                        color: widget.iconColor ?? Colors.grey,
                      ),
                    ),
              ),
            ),
          ),
          ClipRect(
            child: Align(
              heightFactor: _heightFactor.value,
              child: child,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void didChangeDependencies() {
    final ThemeData theme = Theme.of(context);
    _borderColorTween..end = theme.dividerColor;
    _headerColorTween
      ..begin = theme.textTheme.subhead.color
      ..end = theme.accentColor;
    _iconColorTween
      ..begin = theme.unselectedWidgetColor
      ..end = theme.accentColor;
    _backgroundColorTween..end = widget.backgroundColor;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded && _controller.isDismissed;
    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
      child: closed ? null : Column(children: widget.children),
    );
  }
}


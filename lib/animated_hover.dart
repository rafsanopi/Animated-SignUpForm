import 'package:flutter/material.dart';

class AnimatedHover extends StatefulWidget {
  final Widget child;
  final Size size;
  final Offset offset;
  final Color hoverColor, bgColor;
  final Curve curve;
  final Duration duration;
  final Border border;

  const AnimatedHover(
      {super.key,
      required this.child,
      this.size = const Size(440, 440),
      this.offset = const Offset(8, 8),
      this.hoverColor = const Color(0xfffbe851),
      this.bgColor = const Color(0xffe9eff3),
      this.curve = Curves.easeOutBack,
      this.duration = const Duration(milliseconds: 300),
      this.border = const Border()});

  @override
  State<AnimatedHover> createState() => _AnimatedHoverState();
}

class _AnimatedHoverState extends State<AnimatedHover> {
  bool _ishovered = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: widget.size.height,
          width: widget.size.width,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ),
        AnimatedPositioned(
          duration: widget.duration,
          curve: widget.curve,
          bottom: _ishovered ? widget.offset.dy : 0,
          right: _ishovered ? widget.offset.dx : 0,
          child: InkWell(
            onTap: () {},
            onHover: (hover) {
              setState(() {
                _ishovered = hover;
              });
            },
            overlayColor: MaterialStateProperty.all(Colors.transparent),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              height: widget.size.height,
              width: widget.size.width,
              decoration: BoxDecoration(
                  color: _ishovered ? widget.hoverColor : widget.bgColor,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: widget.border),
              child: widget.child,
            ),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class ImageWithShadow extends StatefulWidget {
  final String imageUrl;

  const ImageWithShadow({super.key, required this.imageUrl});

  @override
  State<ImageWithShadow> createState() => _ImageWithShadowState();
}

class _ImageWithShadowState extends State<ImageWithShadow> {
  PaletteGenerator? _paletteGenerator;
  bool _isLoading = true;
  Color _backgroundColor = Colors.transparent;

  Future<void> _generatePalette() async {
    final image = NetworkImage(widget.imageUrl);
    _paletteGenerator = await PaletteGenerator.fromImageProvider(image);
    print(_paletteGenerator);

    _backgroundColor = _paletteGenerator!.dominantColor!.color;
    setState(() {
      _isLoading = false;
    });
  }

  void initState() {
    super.initState();
    _generatePalette();
  }

  @override
  Widget build(BuildContext context) {
    ColorFilter colorFilter =
        ColorFilter.mode(_backgroundColor, BlendMode.srcIn);
    Widget imageWithShadow = ColorFiltered(
      colorFilter: colorFilter,
      child: Image.network(
        widget.imageUrl,
        fit: BoxFit.cover,
        width: 100,
        height: 100,
      ),
    );
    return _isLoading
        ? const CircularProgressIndicator()
        : Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: _backgroundColor.withOpacity(0.4),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: imageWithShadow,
          );
  }
}

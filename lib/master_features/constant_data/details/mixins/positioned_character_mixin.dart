import 'package:flutter/material.dart';
import 'package:frame_creator_v2/basic_importation.dart';
import 'package:frame_creator_v2/master_features/constant_data/details/models/character_state.dart';

mixin PositionedCharacterMixin {
  /// -----
  /// TODO:
  /// -----
  CharacterState? _topStartCharacter;
  CharacterState? get getTopStartCharacter => _topStartCharacter;
  void setTopStartCharacter({required CharacterState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topStartCharacter = value;
    } else {
      _topStartCharacter ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CharacterState? _topEndCharacter;
  CharacterState? get getTopEndCharacter => _topEndCharacter;
  void setTopEndCharacter({required CharacterState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _topEndCharacter = value;
    } else {
      _topEndCharacter ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CharacterState? _bottomStartCharacter;
  CharacterState? get getBottomStartCharacter => _bottomStartCharacter;
  void setBottomStartCharacter({required CharacterState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bottomStartCharacter = value;
    } else {
      _bottomStartCharacter ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  CharacterState? _bottomEndCharacter;
  CharacterState? get getBottomEndCharacter => _bottomEndCharacter;
  void setBottomEndCharacter({required CharacterState? value, bool? isPriorityOverride}) {
    if (isPriorityOverride == true) {
      _bottomEndCharacter = value;
    } else {
      _bottomEndCharacter ??= value;
    }

    return;
  }

  /// -----
  /// TODO:
  /// -----
  Future<void> onLoadCharacter({required double sizeDx, required double sizeDy, required CoreFeature? coreFeature, required FlameGame flameGame}) async {
    SpriteAnimationComponent? spriteAnimationComponentTopStartCharacter;
    TextComponent? borderNameComponentTopStartCharacter;
    TextComponent? nameComponentTopStartCharacter;

    SpriteAnimationComponent? spriteAnimationComponentTopEndCharacter;
    TextComponent? borderNameComponentTopEndCharacter;
    TextComponent? nameComponentTopEndCharacter;

    SpriteAnimationComponent? spriteAnimationComponentBottomStartCharacter;
    TextComponent? borderNameComponentBottomStartCharacter;
    TextComponent? nameComponentBottomStartCharacter;

    SpriteAnimationComponent? spriteAnimationComponentBottomEndCharacter;
    TextComponent? borderNameComponentBottomEndCharacter;
    TextComponent? nameComponentBottomEndCharacter;

    /// TODO: _TopStart
    if (coreFeature?.getTopStartCharacter?.getStateModel != null && getTopStartCharacter?.getStateModel == null) {
      setTopStartCharacter(value: coreFeature?.getTopStartCharacter, isPriorityOverride: true);

      spriteAnimationComponentTopStartCharacter = SpriteAnimationComponent()
        ..animation = getTopStartCharacter?.getStateModel?.getSpriteAnimation
        ..size = Vector2(getTopStartCharacter?.getStateModel?.getSizeDx ?? 0, getTopStartCharacter?.getStateModel?.getSizeDy ?? 0)
        ..position = Vector2((getTopStartCharacter?.getStateModel?.getSizeDx ?? 0) / 2 + 25.0, ((getTopStartCharacter?.getStateModel?.getSizeDy ?? 0) / 2 + 50));

      borderNameComponentTopStartCharacter = TextComponent(
        text: getTopStartCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentTopStartCharacter.position.x, spriteAnimationComponentTopStartCharacter.position.y + (spriteAnimationComponentTopStartCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 10
              ..color = Color(0xFF000000),
            letterSpacing: 5.0,
          ),
        ),
      );

      nameComponentTopStartCharacter = TextComponent(
        text: getTopStartCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentTopStartCharacter.position.x, spriteAnimationComponentTopStartCharacter.position.y + (spriteAnimationComponentTopStartCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
        ),
      );

      spriteAnimationComponentTopStartCharacter.anchor = Anchor.center;
      borderNameComponentTopStartCharacter.anchor = Anchor.center;
      nameComponentTopStartCharacter.anchor = Anchor.center;

      flameGame.add(spriteAnimationComponentTopStartCharacter);
      flameGame.add(borderNameComponentTopStartCharacter);
      flameGame.add(nameComponentTopStartCharacter);
    }

    /// TODO: _TopEnd
    if (coreFeature?.getTopEndCharacter?.getStateModel != null && getTopEndCharacter?.getStateModel == null) {
      setTopEndCharacter(value: coreFeature?.getTopEndCharacter, isPriorityOverride: true);

      spriteAnimationComponentTopEndCharacter = SpriteAnimationComponent()
        ..animation = getTopEndCharacter?.getStateModel?.getSpriteAnimation
        ..size = Vector2(getTopEndCharacter?.getStateModel?.getSizeDx ?? 0, getTopEndCharacter?.getStateModel?.getSizeDy ?? 0)
        ..position = Vector2(sizeDx - ((getTopEndCharacter?.getStateModel?.getSizeDx ?? 0) / 2 + 25.0), ((getTopEndCharacter?.getStateModel?.getSizeDy ?? 0) / 2 + 50));

      borderNameComponentTopEndCharacter = TextComponent(
        text: getTopEndCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentTopEndCharacter.position.x, spriteAnimationComponentTopEndCharacter.position.y + (spriteAnimationComponentTopEndCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 10
              ..color = Color(0xFF000000),
            letterSpacing: 5.0,
          ),
        ),
      );

      nameComponentTopEndCharacter = TextComponent(
        text: getTopEndCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentTopEndCharacter.position.x, spriteAnimationComponentTopEndCharacter.position.y + (spriteAnimationComponentTopEndCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
        ),
      );

      spriteAnimationComponentTopEndCharacter.anchor = Anchor.center;
      borderNameComponentTopEndCharacter.anchor = Anchor.center;
      nameComponentTopEndCharacter.anchor = Anchor.center;

      flameGame.add(spriteAnimationComponentTopEndCharacter);
      flameGame.add(borderNameComponentTopEndCharacter);
      flameGame.add(nameComponentTopEndCharacter);
    }

    /// TODO: _BottomStart
    if (coreFeature?.getBottomStartCharacter?.getStateModel != null && getBottomStartCharacter?.getStateModel == null) {
      setBottomStartCharacter(value: coreFeature?.getBottomStartCharacter, isPriorityOverride: true);

      spriteAnimationComponentBottomStartCharacter = SpriteAnimationComponent()
        ..animation = getBottomStartCharacter?.getStateModel?.getSpriteAnimation
        ..size = Vector2(getBottomStartCharacter?.getStateModel?.getSizeDx ?? 0, getBottomStartCharacter?.getStateModel?.getSizeDy ?? 0)
        ..position = Vector2((getBottomStartCharacter?.getStateModel?.getSizeDx ?? 0) / 2 + 25.0, sizeDy - ((getBottomStartCharacter?.getStateModel?.getSizeDy ?? 0) / 2 + 50));

      borderNameComponentBottomStartCharacter = TextComponent(
        text: getBottomStartCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentBottomStartCharacter.position.x, spriteAnimationComponentBottomStartCharacter.position.y + (spriteAnimationComponentBottomStartCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 10
              ..color = Color(0xFF000000),
            letterSpacing: 5.0,
          ),
        ),
      );

      nameComponentBottomStartCharacter = TextComponent(
        text: getBottomStartCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentBottomStartCharacter.position.x, spriteAnimationComponentBottomStartCharacter.position.y + (spriteAnimationComponentBottomStartCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
        ),
      );

      spriteAnimationComponentBottomStartCharacter.anchor = Anchor.center;
      borderNameComponentBottomStartCharacter.anchor = Anchor.center;
      nameComponentBottomStartCharacter.anchor = Anchor.center;

      flameGame.add(spriteAnimationComponentBottomStartCharacter);
      flameGame.add(borderNameComponentBottomStartCharacter);
      flameGame.add(nameComponentBottomStartCharacter);
    }

    /// TODO: _BottomEnd
    if (coreFeature?.getBottomEndCharacter?.getStateModel != null && getBottomEndCharacter?.getStateModel == null) {
      setBottomEndCharacter(value: coreFeature?.getBottomEndCharacter, isPriorityOverride: true);

      spriteAnimationComponentBottomEndCharacter = SpriteAnimationComponent()
        ..animation = getBottomEndCharacter?.getStateModel?.getSpriteAnimation
        ..size = Vector2(getBottomEndCharacter?.getStateModel?.getSizeDx ?? 0, getBottomEndCharacter?.getStateModel?.getSizeDy ?? 0)
        ..position = Vector2(sizeDx - ((getBottomEndCharacter?.getStateModel?.getSizeDx ?? 0) / 2 + 25.0), sizeDy - ((getBottomEndCharacter?.getStateModel?.getSizeDy ?? 0) / 2 + 50));

      borderNameComponentBottomEndCharacter = TextComponent(
        text: getBottomEndCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentBottomEndCharacter.position.x, spriteAnimationComponentBottomEndCharacter.position.y + (spriteAnimationComponentBottomEndCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(
            fontWeight: FontWeight.bold,
            fontSize: 50.0,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 10
              ..color = Color(0xFF000000),
            letterSpacing: 5.0,
          ),
        ),
      );

      nameComponentBottomEndCharacter = TextComponent(
        text: getBottomEndCharacter?.getStateModel?.getCharacterName,
        position: Vector2(spriteAnimationComponentBottomEndCharacter.position.x, spriteAnimationComponentBottomEndCharacter.position.y + (spriteAnimationComponentBottomEndCharacter.size.y / 2) + 10.0), // vị trí trên màn hình
        textRenderer: TextPaint(
          style: GoogleFonts.sriracha(color: Color(0xFFFFE7BA).withValues(alpha: 0.8), fontWeight: FontWeight.bold, fontSize: 50.0, letterSpacing: 5.0),
        ),
      );

      spriteAnimationComponentBottomEndCharacter.anchor = Anchor.center;
      borderNameComponentBottomEndCharacter.anchor = Anchor.center;
      nameComponentBottomEndCharacter.anchor = Anchor.center;

      flameGame.add(spriteAnimationComponentBottomEndCharacter);
      flameGame.add(borderNameComponentBottomEndCharacter);
      flameGame.add(nameComponentBottomEndCharacter);
    }

    return;
  }
}

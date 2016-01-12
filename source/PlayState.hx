package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSprite;
import flixel.util.FlxColor;
using flixel.util.FlxSpriteUtil;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the actual gameplay.
 */
class PlayState extends FlxState
{
  private static inline var rectangle_size : Float = 150;
  private static inline var rectangle_corner_radius : Float = 10;
  private var rectangle_1 : FlxSprite;
  private var rectangle_2 : FlxSprite;

  /**
   * Function that is called up when to state is created to set it up.
   */
  override public function create():Void
  {
    // create the two shapes to be added to this state
    // use chaining to setup the shape graphics
    rectangle_1 = new FlxSprite()
      .makeGraphic( rectangle_size, rectangle_size, FlxColor.TRANSPARENT )
      .drawRoundRect( 0, 0, rectangle_size, rectangle_size, rectangle_corner_radius, rectangle_corner_radius, FlxColor.FOREST_GREEN, null, null, null);

    rectangle_2 = new FlxSprite()
      .makeGraphic( rectangle_size, rectangle_size, FlxColor.TRANSPARENT )
      .drawRoundRect( 0, 0, rectangle_size, rectangle_size, rectangle_corner_radius, rectangle_corner_radius, FlxColor.FOREST_GREEN, null, null, null);

    rectangle_1.setPosition( ( FlxG.width - rectangle_1.width ) * .3, ( FlxG.height - rectangle_1.height ) / 2);
    rectangle_2.setPosition( ( FlxG.width - rectangle_2.width ) * .7, ( FlxG.height - rectangle_2.height ) / 2);

    // add the shapes to this state
    add(rectangle_1);
    add(rectangle_2);

    // call the superclass create() method *required*
    super.create();
  }

  /**
   * Function that is called when this state is destroyed - you might want to
   * consider setting all objects this state uses to null to help garbage collection.
   */
  override public function destroy():Void
  {
    // set sprites to null to help with gc
    rectangle_1 = null;
    rectangle_2 = null;

    super.destroy();
  }

  /**
   * Function that is called once every frame.
   */
  override public function update():Void
  {
    super.update();
  }

}

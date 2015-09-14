package starling.utils;

import openfl.utils.ByteArray;
class ByteArrayUtil
{
	inline public static function getFromByteArray(ba:ByteArray, index:Int)
	{
		#if flash
		return ba[index];
		#elseif js
		return @:privateAccess ba.data.getUint8(index);
		#else
		return ba.__get(index);
		#end
	}
}
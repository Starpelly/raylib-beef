using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct AutomationEvent
{
	/// Event frame
	public int32 frame;
	
	/// Event type (AutomationEventType)
	public int32 type;
	
	/// Event parameters (if required)
	public int32[4] @params;
	
	public this(int32 frame, int32 type, int32[4] @params)
	{
		this.frame = frame;
		this.type = type;
		this.@params = @params;
	}
}

using System;
using System.Interop;

namespace RaylibBeef;

[CRepr]
public struct AutomationEventList
{
	/// Events max entries (MAX_AUTOMATION_EVENTS)
	public int32 capacity;
	
	/// Events entries count
	public int32 count;
	
	/// Events entries
	public AutomationEvent * events;
	
	public this(int32 capacity, int32 count, AutomationEvent * events)
	{
		this.capacity = capacity;
		this.count = count;
		this.events = events;
	}
}

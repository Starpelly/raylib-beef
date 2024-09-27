using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Trace log level
public enum TraceLogLevel : c_int
{
	/// Display all logs
	case LOG_ALL = 0;
	/// Trace logging, intended for internal use only
	case LOG_TRACE = 1;
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	case LOG_DEBUG = 2;
	/// Info logging, used for program execution info
	case LOG_INFO = 3;
	/// Warning logging, used on recoverable failures
	case LOG_WARNING = 4;
	/// Error logging, used on unrecoverable failures
	case LOG_ERROR = 5;
	/// Fatal logging, used to abort program: exit(EXIT_FAILURE)
	case LOG_FATAL = 6;
	/// Disable logging
	case LOG_NONE = 7;
	
	public static operator int32 (TraceLogLevel self) => (int32)self;
}

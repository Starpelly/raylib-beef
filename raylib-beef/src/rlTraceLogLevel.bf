using System;
using System.Interop;

namespace RaylibBeef;

[AllowDuplicates]
/// Trace log level
public enum rlTraceLogLevel : c_int
{
	/// Display all logs
	case RL_LOG_ALL = 0;
	/// Trace logging, intended for internal use only
	case RL_LOG_TRACE = 1;
	/// Debug logging, used for internal debugging, it should be disabled on release builds
	case RL_LOG_DEBUG = 2;
	/// Info logging, used for program execution info
	case RL_LOG_INFO = 3;
	/// Warning logging, used on recoverable failures
	case RL_LOG_WARNING = 4;
	/// Error logging, used on unrecoverable failures
	case RL_LOG_ERROR = 5;
	/// Fatal logging, used to abort program: exit(EXIT_FAILURE)
	case RL_LOG_FATAL = 6;
	/// Disable logging
	case RL_LOG_NONE = 7;
	
	public static operator int32 (rlTraceLogLevel self) => (int32)self;
}

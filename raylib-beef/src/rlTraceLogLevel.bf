using System;
using System.Interop;

namespace RaylibBeef;

/// Trace log level
public enum rlTraceLogLevel : c_int
{
    /// Display all logs
    RL_LOG_ALL = 0,
    /// Trace logging, intended for internal use only
    RL_LOG_TRACE = 1,
    /// Debug logging, used for internal debugging, it should be disabled on release builds
    RL_LOG_DEBUG = 2,
    /// Info logging, used for program execution info
    RL_LOG_INFO = 3,
    /// Warning logging, used on recoverable failures
    RL_LOG_WARNING = 4,
    /// Error logging, used on unrecoverable failures
    RL_LOG_ERROR = 5,
    /// Fatal logging, used to abort program: exit(EXIT_FAILURE)
    RL_LOG_FATAL = 6,
    /// Disable logging
    RL_LOG_NONE = 7,
}

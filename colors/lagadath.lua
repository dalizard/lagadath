-- Reset cached package for easy testing
package.loaded['lagadath.palette'] = nil
package.loaded['lagadath.theme'] = nil

require("lagadath").load()

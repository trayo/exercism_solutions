package gigasecond

import "time"

const TestVersion = 2
const GIGASECOND = 1e18

func AddGigasecond(date time.Time) time.Time {
	return date.Add(GIGASECOND)
}

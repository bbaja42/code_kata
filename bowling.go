package bowling

import "fmt"

var scoreLookup map[string]int

func play(frame string) int {
	fmt.Println(scoreLookup)
	return scoreLookup[frame]
}

func init() {
	scoreLookup := make(map[string]int)

	scoreLookup["X"] = 10
	scoreLookup["/"] = 10
	scoreLookup["--"] = 0
	scoreLookup["-"] = 0
}

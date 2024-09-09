# BunLoop

A fast, simple program to loop music seamlessly.

In the interest of speed, this process is not fully automated and requires the user to supply the estimated start and end points of a loop.

## Usage

Navigate to the project directory and compile the program. Note that [libsndfile](https://libsndfile.github.io/libsndfile/) is required.

```bash
make
```

Run the program with the following arguments

```bash
./main /path/to/input /path/to/output start_time estimated_end_time minimum_length_of_output
```

The `start_time`, `estimated_end_time` and `minimum_length_of_output` are to be provided in seconds, as integers. For example, if the start of the loop is at 0m18s, the end of the loop is around 2m03s and the extended music should be at least 30 minutes long, you should use:

```bash
./main /path/to/input /path/to/output 18 123 1800
```

The program attempts to find the exact end of the loop that matches `start_time`, starting from `estimated_end_time`, in a window of 1 second. As such, the end of the loop should be within 1 second after `estimated_end_time` for the highest chance of success. For the same reason, the start of the loop should occur at or before `start_time`.

Note that the program will add loops until `minimum_length_of_output` is exceeded. It does not guarantee that the output file will end exactly at `minimum_length_of_output`.

#define N 5
int fork[N] = -1;


active [N] proctype Phil() {

    non_cs:
    do
    ::
        printf("philosopher %d is thinking...\n", _pid);
        (fork[_pid] == -1 && fork[(_pid+1)%N]==-1)

    cs:
        fork[_pid] = _pid;
        fork[(_pid+1)%N] = _pid;
        printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, (_pid+1)%N);
        fork[_pid] = -1;
        fork[(_pid+1)%N] = -1;

    exit:
        goto non_cs;
    od
}

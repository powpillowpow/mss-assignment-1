#define N 5
int fork[N] = -1;
byte ghost;


active [N] proctype Phil() {

    non_cs:
    printf("philosopher %d is thinking...\n", _pid);
    (fork[_pid] == -1)

    cs:
    ghost++;
    assert(ghost==1);
    fork[_pid] = _pid;
    fork[(_pid+1)%N] = _pid;
    printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, (_pid+1)%N);
    ghost--;

    exit:
        fork[_pid] = -1;
        fork[(_pid+1)%N] = -1;

        goto non_cs;
}

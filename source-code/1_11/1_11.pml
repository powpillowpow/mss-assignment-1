#define N 3

int fork[N] = -1;
byte critical;
int currentPh = -1;

ltl absence_starvation { []((critical==0) -> <>(critical==1)) }


active [N] proctype Phil() {
    non_cs:
    do
    ::
        printf("philosopher %d is thinking...\n", _pid);
    
        (fork[_pid] == -1 && fork[(_pid+1)%N] == -1 && _pid != currentPh)

    cs:
        atomic
        {
            critical++;
            fork[_pid] = _pid;
            fork[(_pid+1)%N] = _pid;

            printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, (_pid+1)%N);
            currentPh = _pid;
            critical--;
        }

    exit:
        fork[_pid] = -1;
        fork[(_pid+1)%N] = -1;

        goto non_cs;
    od
}

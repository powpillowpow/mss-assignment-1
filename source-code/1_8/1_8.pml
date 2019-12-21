#define N 3
int fork[N] = -1;
byte ghostDL1;

ltl deadlock_freedom { []((ghostDL1 == 0) -> <>(ghostDL1 == 1))}

inline philosopherGetsFork(philosopherNumber)
{
    (fork[philosopherNumber] == -1 && fork[(philosopherNumber+1)%N] == -1)
    ghostDL1++;
    fork[philosopherNumber] = philosopherNumber;
    printf("philosopher %d gets fork%d...\n", _pid, philosopherNumber);
    fork[(philosopherNumber+1)%N] = philosopherNumber;
    printf("philosopher %d gets fork%d...\n", _pid, (philosopherNumber+1)%N);
    ghostDL1--;
}

active [N] proctype Phil() {
    non_cs:
    printf("philosopher %d is thinking...\n", _pid);

    cs:
    atomic
    {
        philosopherGetsFork(_pid);
    }

    exit:
    (fork[_pid]!=-1 && fork[(_pid+1)%N]!=-1 && fork[_pid] == _pid && fork[(_pid+1)%N] == _pid)
    atomic
    {
        printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, (_pid+1)%N);
        fork[_pid] = -1;
        fork[(_pid+1)%N] = -1;
    }
    goto non_cs;
}

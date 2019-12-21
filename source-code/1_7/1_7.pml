#define N 3
int fork[N] = -1;
byte ghostDL1, ghostDL2;

ltl mutual_exclusion { [](ghostDL1 <= 1) && [](ghostDL2 <= 1) }

inline philosopherGetsLeftFork(philosopherNumber)
{
    (fork[philosopherNumber] == -1 && fork[(philosopherNumber+1)%N] == -1)
    ghostDL1++;
    printf("philosopher %d gets fork%d...\n", _pid, philosopherNumber);
    fork[philosopherNumber] = philosopherNumber;
    ghostDL1--;
}

inline philosopherGetsRightFork(philosopherNumber)
{
    (fork[(philosopherNumber+1)%N] == -1 && fork[philosopherNumber] == philosopherNumber)
    ghostDL2++;
    printf("philosopher %d gets fork%d...\n", _pid, (philosopherNumber+1)%N);
    fork[(philosopherNumber+1)%N] = philosopherNumber;  
    ghostDL2--;                                             
}

active [N] proctype Phil() {
    do
    :: 
    printf("philosopher %d is thinking...\n", _pid);
    atomic
    {
        philosopherGetsLeftFork(_pid);
        philosopherGetsRightFork(_pid);
    }

    (fork[_pid]!=-1 && fork[(_pid+1)%N]!=-1 && fork[_pid] == _pid && fork[(_pid+1)%N] == _pid)
    atomic
    {
        printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, (_pid+1)%N);
        fork[_pid] = -1;
        fork[(_pid+1)%N] = -1;
    }
    od
}

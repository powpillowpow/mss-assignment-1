#define N 3
int fork[N] = -1;
byte ghost, ghost2, ghost3, ghost4;

inline philosopherGetsLeftFork(philosopherNumber)
{
    if
    :: philosopherNumber < N-1 ->
       (fork[philosopherNumber] == -1 && fork[philosopherNumber+1] == -1)
       printf("philosopher %d gets fork%d...\n", _pid, philosopherNumber);
       ghost++;
       assert(ghost<=1);
       fork[philosopherNumber] = philosopherNumber;
       ghost--;
    :: else -> 
        (fork[N-1] == -1 && fork[0] == -1) 
        printf("philosopher %d gets fork%d...\n", _pid, N-1);
        ghost2++;
        assert(ghost<=1);
        fork[N-1] = philosopherNumber;
        ghost2--;
    fi
}

inline philosopherGetsRightFork(philosopherNumber)
{
    if
    :: philosopherNumber < N-1 ->
       (fork[philosopherNumber+1] == -1 && fork[philosopherNumber] == philosopherNumber)
       printf("philosopher %d gets fork%d...\n", _pid, philosopherNumber+1);
       ghost3++;
       assert(ghost3<=1);
       fork[philosopherNumber+1] = philosopherNumber;
       ghost3--;
    :: else -> 
        (fork[0] == -1 && fork[N-1] == philosopherNumber)
        printf("philosopher %d gets fork0...\n", _pid);
        ghost4++;
        assert(ghost4<=1);
        fork[0] = philosopherNumber;
        ghost4--;
    fi                                                      
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

    if
    ::_pid < N-1 ->
        (fork[_pid]!=-1 && fork[_pid+1]!=-1 && fork[_pid] == _pid && fork[_pid+1] == _pid)
        atomic
        {
            printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, _pid+1);
            fork[_pid] = -1;
            fork[_pid+1] = -1;
        }
        
    :: else ->
        (fork[N-1]!=-1 && fork[0]!=-1 && fork[0] == _pid && fork[N-1] == _pid)
        atomic
        {
            printf("philosopher %d eats with fork%d and fork%d...\n", _pid, 0, N-1);
            fork[0] = -1;
            fork[N-1] = -1;
        }
    fi
    od
}
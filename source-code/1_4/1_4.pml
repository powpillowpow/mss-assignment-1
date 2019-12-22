#define N 5
int fork[N] = -1;

inline philosopherGetsLeftFork(philosopherNumber)
{
    if
    :: philosopherNumber < N-1 ->
       (fork[philosopherNumber] == -1 && fork[philosopherNumber+1] == -1)
       printf("philosopher %d gets fork%d...\n", _pid, philosopherNumber);
       fork[philosopherNumber] = philosopherNumber;
    :: else -> 
        (fork[N-1] == -1 && fork[0] == -1) 
        printf("philosopher %d gets fork%d...\n", _pid, N-1);
        fork[N-1] = philosopherNumber;
    fi
}

inline philosopherGetsRightFork(philosopherNumber)
{
    if
    :: philosopherNumber < N-1 ->
       (fork[philosopherNumber+1] == -1 && fork[philosopherNumber] == philosopherNumber)
       printf("philosopher %d gets fork%d...\n", _pid, philosopherNumber+1);
       fork[philosopherNumber+1] = philosopherNumber;
    :: else -> 
        (fork[0] == -1 && fork[N-1] == philosopherNumber)
        printf("philosopher %d gets fork0...\n", _pid);
        fork[0] = philosopherNumber;
    fi                                                      
}

active [N] proctype Phil() { 
    do
    :: 
    printf("philosopher %d is thinking...\n", _pid);
    atomic
    {
        philosopherGetsLeftFork(_pid);
    }
    
    atomic
    {
        philosopherGetsRightFork(_pid);
    }

    if
    ::_pid < N-1 ->
        (fork[_pid]!=-1 && fork[_pid+1]!=-1 && fork[_pid] == _pid && fork[_pid+1] == _pid)
        printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, _pid+1);
        atomic
        {
            fork[_pid] = -1;
            fork[_pid+1] = -1;
        }
        
    :: else ->
        (fork[N-1]!=-1 && fork[0]!=-1 && fork[0] == _pid && fork[N-1] == _pid)
        printf("philosopher %d eats with fork%d and fork%d...\n", _pid, 0, N-1);
        atomic
        {
            fork[0] = -1;
            fork[N-1] = -1;
        }
    fi
    od
}

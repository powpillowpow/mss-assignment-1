#define N 3
int fork[N] = -1;
byte ghost5, ghost6;
bool as6, as7;

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
        philosopherGetsRightFork(_pid);
    }

    if
    ::_pid < N-1 ->
        (fork[_pid]!=-1 && fork[_pid+1]!=-1 && fork[_pid] == _pid && fork[_pid+1] == _pid)
        atomic
        {
            as6 = (fork[_pid]!=-1 && fork[_pid+1]!=-1 && fork[_pid] == _pid && fork[_pid+1] == _pid);
            assert(as6)
            printf("philosopher %d eats with fork%d and fork%d...\n", _pid, _pid, _pid+1);
            ghost5++;
            assert(ghost5<=1);
            fork[_pid] = -1;
            fork[_pid+1] = -1;
            ghost5--;
        }
        
    :: else ->
        (fork[N-1]!=-1 && fork[0]!=-1 && fork[0] == _pid && fork[N-1] == _pid)
        atomic
        {
            as7 = (fork[N-1]!=-1 && fork[0]!=-1 && fork[0] == _pid && fork[N-1] == _pid);
            assert(as7)
            printf("philosopher %d eats with fork%d and fork%d...\n", _pid, 0, N-1);
            ghost6++;
            assert(ghost6<=1);
            fork[0] = -1;
            fork[N-1] = -1;
            ghost6--;
        }
    fi
    od
}
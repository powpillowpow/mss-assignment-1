#define N 5
int fork[N] = -1;
int i;

inline philosopherGetsLeftFork(philosopherNumber)
{
    if
    ::fork[philosopherNumber] == -1 -> fork[philosopherNumber] = philosopherNumber; printf("philosopher %d GETS LEFT fork%d...\n", _pid, philosopherNumber);
    ::else -> skip;
    fi
}

inline philosopherGetsRightFork(philosopherNumber)
{
    if
    :: philosopherNumber < N-1 ->
        if
        ::fork[philosopherNumber+1] == -1 -> fork[philosopherNumber+1] = philosopherNumber; printf("philosopher %d GETS RIGHT fork%d...\n", _pid, philosopherNumber+1);
        ::else -> skip;
        fi
    :: else -> 
        if
        ::fork[N-1] == -1 -> fork[0] = philosopherNumber; printf("philosopher %d GETS RIGHT fork%d...\n", _pid, philosopherNumber+1);
        ::else -> skip;
        fi
    fi
}

active [N] proctype Phil() { 
    do
    :: 
    if
    ::fork[_pid]!=-1 && (fork[0] == fork[N-1] || fork[_pid] == fork[_pid]) -> printf("philosopher %d eats...\n", _pid);
    ::else -> printf("philosopher %d thinks...\n", _pid);
    fi

    atomic
    {
        philosopherGetsLeftFork(_pid);
    }
    
    atomic
    {
        philosopherGetsRightFork(_pid);
    }

    od
}

/* process 0 -> fork_4 e fork_0 */
/* process 1 -> fork_0 e fork_1 */
/* process 2 -> fork_1 e fork_2 */
/* process 3 -> fork_2 e fork_3 */
/* process 4 -> fork_3 e fork_4 */
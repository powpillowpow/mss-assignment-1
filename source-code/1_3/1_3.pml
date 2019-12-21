bool turn, flag [2];
byte ghost;

ltl mutual_exclusion { [](ghost <= 1) }
active [2] proctype P() 
{
    non_cs:
    do
        :: flag[_pid] = 1;
        turn = 1 - _pid;
        (!flag[1 - _pid] || turn == _pid);
    cs:
        ghost++;
        ghost--;
        skip;

    exit:
        flag[_pid] = 0; 
        goto non_cs;
    od
}

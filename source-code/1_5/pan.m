#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* PROC Phil */
	case 3: // STATE 1 - 1_5.pml:9 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - 1_5.pml:10 - [((fork[_pid]==-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]== -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - 1_5.pml:13 - [ghost = (ghost+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.oval = ((int)now.ghost);
		now.ghost = (((int)now.ghost)+1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - 1_5.pml:14 - [assert((ghost==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		spin_assert((((int)now.ghost)==1), "(ghost==1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 5 - 1_5.pml:15 - [fork[_pid] = _pid] (0:0:1 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - 1_5.pml:16 - [fork[((_pid+1)%5)] = _pid] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 7 - 1_5.pml:17 - [ghost = (ghost-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.ghost);
		now.ghost = (((int)now.ghost)-1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 8 - 1_5.pml:20 - [printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,((_pid+1)%5))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%5));
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 9 - 1_5.pml:21 - [fork[_pid] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 10 - 1_5.pml:22 - [fork[((_pid+1)%5)] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


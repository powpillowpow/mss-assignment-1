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
	case 3: // STATE 1 - 1_6.pml:22 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - 1_6.pml:7 - [(((fork[_pid]==-(1))&&(fork[((_pid+1)%3)]==-(1))))] (9:0:1 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]== -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,_pid)(9, 3, 9) */
		reached[0][3] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: fork[_pid] = _pid(9, 4, 9) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 5: // STATE 6 - 1_6.pml:14 - [(((fork[((_pid+1)%3)]==-(1))&&(fork[_pid]==_pid)))] (11:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!(((now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,(_pid+1))(11, 7, 11) */
		reached[0][7] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: fork[((_pid+1)%3)] = _pid(11, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 11 - 1_6.pml:29 - [(((((fork[_pid]!=-(1))&&(fork[((_pid+1)%3)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[((_pid+1)%3)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (!(((((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]!= -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 12 - 1_6.pml:32 - [a = ((fork[_pid]==_pid)&&(fork[((_pid+1)%3)]==_pid))] (0:18:3 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.a);
		now.a = ((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]==((int)((P0 *)_this)->_pid)));
#ifdef VAR_RANGES
		logval("a", ((int)now.a));
#endif
		;
		/* merge: assert(a)(18, 13, 18) */
		reached[0][13] = 1;
		spin_assert(((int)now.a), "a", II, tt, t);
		/* merge: printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,(_pid+1))(18, 14, 18) */
		reached[0][14] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: fork[_pid] = -(1)(18, 15, 18) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: fork[((_pid+1)%3)] = -(1)(18, 16, 18) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[2] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		/* merge: .(goto)(0, 19, 18) */
		reached[0][19] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 8: // STATE 21 - 1_6.pml:39 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][21] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


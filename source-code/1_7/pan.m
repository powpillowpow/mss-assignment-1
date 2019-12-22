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
	case 3: // STATE 1 - 1_7.pml:11 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - 1_7.pml:13 - [(((fork[_pid]==-(1))&&(fork[((_pid+1)%5)]==-(1))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]== -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ]== -(1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - 1_7.pml:18 - [critical = (critical+1)] (0:16:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.critical);
		now.critical = (((int)now.critical)+1);
#ifdef VAR_RANGES
		logval("critical", ((int)now.critical));
#endif
		;
		/* merge: assert((critical==1))(16, 4, 16) */
		reached[0][4] = 1;
		spin_assert((((int)now.critical)==1), "(critical==1)", II, tt, t);
		/* merge: fork[_pid] = _pid(16, 5, 16) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		/* merge: printf('philosopher %d is gets fork%d...\\n',_pid,_pid)(16, 6, 16) */
		reached[0][6] = 1;
		Printf("philosopher %d is gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: critical = (critical-1)(16, 7, 16) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.critical);
		now.critical = (((int)now.critical)-1);
#ifdef VAR_RANGES
		logval("critical", ((int)now.critical));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 6: // STATE 9 - 1_7.pml:27 - [critical = (critical+1)] (0:17:3 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.critical);
		now.critical = (((int)now.critical)+1);
#ifdef VAR_RANGES
		logval("critical", ((int)now.critical));
#endif
		;
		/* merge: assert((critical==1))(17, 10, 17) */
		reached[0][10] = 1;
		spin_assert((((int)now.critical)==1), "(critical==1)", II, tt, t);
		/* merge: printf('philosopher %d is gets fork%d...\\n',_pid,((_pid+1)%5))(17, 11, 17) */
		reached[0][11] = 1;
		Printf("philosopher %d is gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%5));
		/* merge: fork[((_pid+1)%5)] = _pid(17, 12, 17) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ]);
#endif
		;
		/* merge: assert(((fork[_pid]==_pid)&&(fork[((_pid+1)%5)]==_pid)))(17, 13, 17) */
		reached[0][13] = 1;
		spin_assert(((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]==((int)((P0 *)_this)->_pid))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ]==((int)((P0 *)_this)->_pid))), "((fork[_pid]==_pid)&&(fork[((_pid+1)%5)]==_pid))", II, tt, t);
		/* merge: printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,((_pid+1)%5))(17, 14, 17) */
		reached[0][14] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%5));
		/* merge: critical = (critical-1)(17, 15, 17) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.critical);
		now.critical = (((int)now.critical)-1);
#ifdef VAR_RANGES
		logval("critical", ((int)now.critical));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 7: // STATE 17 - 1_7.pml:39 - [fork[_pid] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 18 - 1_7.pml:40 - [fork[((_pid+1)%5)] = -(1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%5)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%5), 5) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 23 - 1_7.pml:44 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
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


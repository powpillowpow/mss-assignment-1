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
	case 3: // STATE 1 - 1_4.pml:8 - [((fork[_pid]==-(1)))] (26:0:1 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]== -(1))))
			continue;
		/* merge: fork[_pid] = _pid(26, 2, 26) */
		reached[0][2] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		/* merge: .(goto)(26, 6, 26) */
		reached[0][6] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 6 - 1_4.pml:11 - [.(goto)] (0:26:0 - 2)
		IfNotBlocked
		reached[0][6] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 4 - 1_4.pml:9 - [(1)] (26:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(26, 6, 26) */
		reached[0][6] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 6: // STATE 9 - 1_4.pml:16 - [((_pid<(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 10 - 1_4.pml:18 - [((fork[(_pid+1)]==-(1)))] (65:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!((now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]== -(1))))
			continue;
		/* merge: fork[(_pid+1)] = _pid(65, 11, 65) */
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]);
#endif
		;
		/* merge: .(goto)(65, 15, 65) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(65, 24, 65) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 8: // STATE 15 - 1_4.pml:21 - [.(goto)] (0:65:0 - 2)
		IfNotBlocked
		reached[0][15] = 1;
		;
		/* merge: .(goto)(65, 24, 65) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 9: // STATE 13 - 1_4.pml:19 - [(1)] (65:0:0 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 15, 65) */
		reached[0][15] = 1;
		;
		/* merge: .(goto)(65, 24, 65) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 24 - 1_4.pml:27 - [.(goto)] (0:65:0 - 2)
		IfNotBlocked
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 17 - 1_4.pml:23 - [((fork[(5-1)]==-(1)))] (65:0:1 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((now.fork[ Index((5-1), 5) ]== -(1))))
			continue;
		/* merge: fork[0] = _pid(65, 18, 65) */
		reached[0][18] = 1;
		(trpt+1)->bup.oval = now.fork[0];
		now.fork[0] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[0]", now.fork[0]);
#endif
		;
		/* merge: .(goto)(65, 22, 65) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(65, 24, 65) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 12: // STATE 22 - 1_4.pml:26 - [.(goto)] (0:65:0 - 2)
		IfNotBlocked
		reached[0][22] = 1;
		;
		/* merge: .(goto)(65, 24, 65) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 13: // STATE 20 - 1_4.pml:24 - [(1)] (65:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(65, 22, 65) */
		reached[0][22] = 1;
		;
		/* merge: .(goto)(65, 24, 65) */
		reached[0][24] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 14: // STATE 27 - 1_4.pml:51 - [(((fork[_pid]!=-(1))&&(fork[0]==fork[(5-1)])))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]!= -(1))&&(now.fork[0]==now.fork[ Index((5-1), 5) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 28 - 1_4.pml:52 - [printf('philosopher %d eats using fork0 and fork%d...\\n',_pid,5)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][28] = 1;
		Printf("philosopher %d eats using fork0 and fork%d...\n", ((int)((P0 *)_this)->_pid), 5);
		_m = 3; goto P999; /* 0 */
	case 16: // STATE 29 - 1_4.pml:32 - [((fork[_pid]!=-(1)))] (44:0:1 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]!= -(1))))
			continue;
		/* merge: fork[_pid] = -(1)(44, 30, 44) */
		reached[0][30] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		/* merge: .(goto)(44, 34, 44) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 17: // STATE 34 - 1_4.pml:35 - [.(goto)] (0:44:0 - 2)
		IfNotBlocked
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 18: // STATE 32 - 1_4.pml:33 - [(1)] (44:0:0 - 1)
		IfNotBlocked
		reached[0][32] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(44, 34, 44) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 19: // STATE 37 - 1_4.pml:32 - [((fork[(_pid+1)]!=-(1)))] (67:0:1 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]!= -(1))))
			continue;
		/* merge: fork[(_pid+1)] = -(1)(67, 38, 67) */
		reached[0][38] = 1;
		(trpt+1)->bup.oval = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]);
#endif
		;
		/* merge: .(goto)(67, 42, 67) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[0][68] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 20: // STATE 42 - 1_4.pml:35 - [.(goto)] (0:67:0 - 2)
		IfNotBlocked
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[0][68] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 21: // STATE 40 - 1_4.pml:33 - [(1)] (67:0:0 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(67, 42, 67) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[0][68] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 45 - 1_4.pml:61 - [(((fork[_pid]!=-(1))&&((_pid<(5-1))&&(fork[_pid]==fork[(_pid+1)]))))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][45] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]!= -(1))&&((((int)((P0 *)_this)->_pid)<(5-1))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]==now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ])))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 46 - 1_4.pml:62 - [printf('philosopher %d eats using fork%d and fork%d...\\n',_pid,_pid,(_pid+1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
		Printf("philosopher %d eats using fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 47 - 1_4.pml:32 - [((fork[_pid]!=-(1)))] (62:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		if (!((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]!= -(1))))
			continue;
		/* merge: fork[_pid] = -(1)(62, 48, 62) */
		reached[0][48] = 1;
		(trpt+1)->bup.oval = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		/* merge: .(goto)(62, 52, 62) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 25: // STATE 52 - 1_4.pml:35 - [.(goto)] (0:62:0 - 2)
		IfNotBlocked
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 50 - 1_4.pml:33 - [(1)] (62:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(62, 52, 62) */
		reached[0][52] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 55 - 1_4.pml:32 - [((fork[(_pid+1)]!=-(1)))] (67:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!((now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]!= -(1))))
			continue;
		/* merge: fork[(_pid+1)] = -(1)(67, 56, 67) */
		reached[0][56] = 1;
		(trpt+1)->bup.oval = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]);
#endif
		;
		/* merge: .(goto)(67, 60, 67) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[0][68] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 28: // STATE 60 - 1_4.pml:35 - [.(goto)] (0:67:0 - 2)
		IfNotBlocked
		reached[0][60] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[0][68] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 29: // STATE 58 - 1_4.pml:33 - [(1)] (67:0:0 - 1)
		IfNotBlocked
		reached[0][58] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(67, 60, 67) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(0, 66, 67) */
		reached[0][66] = 1;
		;
		/* merge: .(goto)(0, 68, 67) */
		reached[0][68] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 30: // STATE 64 - 1_4.pml:72 - [printf('philosopher %d thinks...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
		Printf("philosopher %d thinks...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 70 - 1_4.pml:75 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][70] = 1;
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


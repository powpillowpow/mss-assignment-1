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
	case 3: // STATE 1 - 1_5.pml:28 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - 1_5.pml:7 - [(((fork[_pid]==-(1))&&(fork[((_pid+1)%3)]==-(1))))] (15:0:3 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]== -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,_pid)(15, 3, 15) */
		reached[0][3] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: ghost = (ghost+1)(15, 4, 15) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghost);
		now.ghost = (((int)now.ghost)+1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		/* merge: assert((ghost<=1))(15, 5, 15) */
		reached[0][5] = 1;
		spin_assert((((int)now.ghost)<=1), "(ghost<=1)", II, tt, t);
		/* merge: fork[_pid] = _pid(15, 6, 15) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: ghost = (ghost-1)(15, 7, 15) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghost);
		now.ghost = (((int)now.ghost)-1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 5: // STATE 9 - 1_5.pml:17 - [(((fork[((_pid+1)%3)]==-(1))&&(fork[_pid]==_pid)))] (17:0:3 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,(_pid+1))(17, 10, 17) */
		reached[0][10] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: ghost2 = (ghost2+1)(17, 11, 17) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghost2);
		now.ghost2 = (((int)now.ghost2)+1);
#ifdef VAR_RANGES
		logval("ghost2", ((int)now.ghost2));
#endif
		;
		/* merge: assert((ghost2<=1))(17, 12, 17) */
		reached[0][12] = 1;
		spin_assert((((int)now.ghost2)<=1), "(ghost2<=1)", II, tt, t);
		/* merge: fork[((_pid+1)%3)] = _pid(17, 13, 17) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		/* merge: ghost2 = (ghost2-1)(17, 14, 17) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghost2);
		now.ghost2 = (((int)now.ghost2)-1);
#ifdef VAR_RANGES
		logval("ghost2", ((int)now.ghost2));
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 6: // STATE 17 - 1_5.pml:35 - [(((((fork[_pid]!=-(1))&&(fork[((_pid+1)%3)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[((_pid+1)%3)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!(((((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]!= -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 18 - 1_5.pml:38 - [printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,(_pid+1))] (0:22:2 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: fork[_pid] = -(1)(22, 19, 22) */
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: fork[((_pid+1)%3)] = -(1)(22, 20, 22) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		/* merge: .(goto)(0, 23, 22) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 8: // STATE 25 - 1_5.pml:43 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][25] = 1;
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


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

		 /* PROC P */
	case 3: // STATE 4 - 1_2.pml:8 - [(0)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (!(0))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 7 - 1_2.pml:12 - [flag[_pid] = 1] (0:0:1 - 5)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)_this)->_pid), 2) ]);
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = 1;
#ifdef VAR_RANGES
		logval("flag[_pid]", ((int)now.flag[ Index(((int)((P0 *)_this)->_pid), 2) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 8 - 1_2.pml:13 - [turn = (1-_pid)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.turn);
		now.turn = (1-((int)((P0 *)_this)->_pid));
#ifdef VAR_RANGES
		logval("turn", ((int)now.turn));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 9 - 1_2.pml:15 - [((!(flag[(1-_pid)])||(turn==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(( !(((int)now.flag[ Index((1-((int)((P0 *)_this)->_pid)), 2) ]))||(((int)now.turn)==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 10 - 1_2.pml:18 - [ghost = (ghost+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.ghost);
		now.ghost = (((int)now.ghost)+1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 11 - 1_2.pml:19 - [assert((ghost<=1))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		spin_assert((((int)now.ghost)<=1), "(ghost<=1)", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - 1_2.pml:21 - [ghost = (ghost-1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = ((int)now.ghost);
		now.ghost = (((int)now.ghost)-1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 14 - 1_2.pml:24 - [flag[_pid] = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((int)now.flag[ Index(((int)((P0 *)_this)->_pid), 2) ]);
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = 0;
#ifdef VAR_RANGES
		logval("flag[_pid]", ((int)now.flag[ Index(((int)((P0 *)_this)->_pid), 2) ]));
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


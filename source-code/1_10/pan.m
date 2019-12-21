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

		 /* CLAIM starvation */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [(!(((((334==0)&&(334==1))&&(334==0))&&(334==1))))] (4:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][1] = 1;
		if (!( !(((((334==0)&&(334==1))&&(334==0))&&(334==1)))))
			continue;
		/* merge: assert(!(!(((((334==0)&&(334==1))&&(334==0))&&(334==1)))))(0, 2, 4) */
		reached[1][2] = 1;
		spin_assert( !( !(((((334==0)&&(334==1))&&(334==0))&&(334==1)))), " !( !(((((334==0)&&(334==1))&&(334==0))&&(334==1))))", II, tt, t);
		/* merge: .(goto)(0, 5, 4) */
		reached[1][5] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Phil */
	case 5: // STATE 1 - 1_10.pml:43 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - 1_10.pml:11 - [((_pid<(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - 1_10.pml:12 - [(((fork[_pid]==-(1))&&(fork[(_pid+1)]==-(1))))] (27:0:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]== -(1))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]== -(1)))))
			continue;
		/* merge: ghostLF = (ghostLF+1)(27, 4, 27) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghostLF);
		now.ghostLF = (((int)now.ghostLF)+1);
#ifdef VAR_RANGES
		logval("ghostLF", ((int)now.ghostLF));
#endif
		;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,_pid)(27, 5, 27) */
		reached[0][5] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: fork[_pid] = _pid(27, 6, 27) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		/* merge: ghostLF = (ghostLF-1)(27, 7, 27) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghostLF);
		now.ghostLF = (((int)now.ghostLF)-1);
#ifdef VAR_RANGES
		logval("ghostLF", ((int)now.ghostLF));
#endif
		;
		/* merge: .(goto)(0, 15, 27) */
		reached[0][15] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 8: // STATE 9 - 1_10.pml:18 - [(((fork[(5-1)]==-(1))&&(fork[0]==-(1))))] (27:0:3 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!(((now.fork[ Index((5-1), 5) ]== -(1))&&(now.fork[0]== -(1)))))
			continue;
		/* merge: ghostLF2 = (ghostLF2+1)(27, 10, 27) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghostLF2);
		now.ghostLF2 = (((int)now.ghostLF2)+1);
#ifdef VAR_RANGES
		logval("ghostLF2", ((int)now.ghostLF2));
#endif
		;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,(5-1))(27, 11, 27) */
		reached[0][11] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), (5-1));
		/* merge: fork[(5-1)] = _pid(27, 12, 27) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index((5-1), 5) ];
		now.fork[ Index((5-1), 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[(5-1)]", now.fork[ Index((5-1), 5) ]);
#endif
		;
		/* merge: ghostLF2 = (ghostLF2-1)(27, 13, 27) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghostLF2);
		now.ghostLF2 = (((int)now.ghostLF2)-1);
#ifdef VAR_RANGES
		logval("ghostLF2", ((int)now.ghostLF2));
#endif
		;
		/* merge: .(goto)(0, 15, 27) */
		reached[0][15] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 9: // STATE 17 - 1_10.pml:29 - [((_pid<(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][17] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 18 - 1_10.pml:30 - [(((fork[(_pid+1)]==-(1))&&(fork[_pid]==_pid)))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][18] = 1;
		if (!(((now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]== -(1))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,(_pid+1))(41, 19, 41) */
		reached[0][19] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: fork[(_pid+1)] = _pid(41, 20, 41) */
		reached[0][20] = 1;
		(trpt+1)->bup.oval = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]);
#endif
		;
		/* merge: .(goto)(41, 26, 41) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 11: // STATE 26 - 1_10.pml:38 - [.(goto)] (0:41:0 - 2)
		IfNotBlocked
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 22 - 1_10.pml:34 - [(((fork[0]==-(1))&&(fork[(5-1)]==_pid)))] (41:0:1 - 1)
		IfNotBlocked
		reached[0][22] = 1;
		if (!(((now.fork[0]== -(1))&&(now.fork[ Index((5-1), 5) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: printf('philosopher %d gets fork0...\\n',_pid)(41, 23, 41) */
		reached[0][23] = 1;
		Printf("philosopher %d gets fork0...\n", ((int)((P0 *)_this)->_pid));
		/* merge: fork[0] = _pid(41, 24, 41) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = now.fork[0];
		now.fork[0] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[0]", now.fork[0]);
#endif
		;
		/* merge: .(goto)(41, 26, 41) */
		reached[0][26] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 29 - 1_10.pml:51 - [((_pid<(5-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][29] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(5-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 30 - 1_10.pml:52 - [(((((fork[_pid]!=-(1))&&(fork[(_pid+1)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[(_pid+1)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		if (!(((((now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]!= -(1))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 31 - 1_10.pml:55 - [printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,(_pid+1))] (0:43:2 - 1)
		IfNotBlocked
		reached[0][31] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: fork[_pid] = -(1)(43, 32, 43) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 5) ]);
#endif
		;
		/* merge: fork[(_pid+1)] = -(1)(43, 33, 43) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 5) ]);
#endif
		;
		/* merge: .(goto)(0, 42, 43) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[0][44] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 16: // STATE 36 - 1_10.pml:61 - [(((((fork[(5-1)]!=-(1))&&(fork[0]!=-(1)))&&(fork[0]==_pid))&&(fork[(5-1)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][36] = 1;
		if (!(((((now.fork[ Index((5-1), 5) ]!= -(1))&&(now.fork[0]!= -(1)))&&(now.fork[0]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index((5-1), 5) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 37 - 1_10.pml:64 - [printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,0,(5-1))] (0:43:2 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), 0, (5-1));
		/* merge: fork[0] = -(1)(43, 38, 43) */
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.fork[0];
		now.fork[0] =  -(1);
#ifdef VAR_RANGES
		logval("fork[0]", now.fork[0]);
#endif
		;
		/* merge: fork[(5-1)] = -(1)(43, 39, 43) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index((5-1), 5) ];
		now.fork[ Index((5-1), 5) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[(5-1)]", now.fork[ Index((5-1), 5) ]);
#endif
		;
		/* merge: .(goto)(0, 42, 43) */
		reached[0][42] = 1;
		;
		/* merge: .(goto)(0, 44, 43) */
		reached[0][44] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 18: // STATE 46 - 1_10.pml:70 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][46] = 1;
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


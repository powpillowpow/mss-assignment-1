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

		 /* CLAIM deadlock_freedom */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [((!(!((ghostDL1==0)))&&!((ghostDL1==1))))] (0:0:0 - 1)
		
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
		if (!(( !( !((((int)now.ghostDL1)==0)))&& !((((int)now.ghostDL1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Phil */
	case 5: // STATE 1 - 1_9.pml:21 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 2 - 1_9.pml:23 - [((_pid==currentP))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)_this)->_pid)==((int)now.currentP))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 3 - 1_9.pml:10 - [(((fork[_pid]==-(1))&&(fork[((_pid+1)%3)]==-(1))))] (12:0:4 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]== -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1)))))
			continue;
		/* merge: ghostDL1 = (ghostDL1+1)(12, 4, 12) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((int)now.ghostDL1);
		now.ghostDL1 = (((int)now.ghostDL1)+1);
#ifdef VAR_RANGES
		logval("ghostDL1", ((int)now.ghostDL1));
#endif
		;
		/* merge: fork[_pid] = _pid(12, 5, 12) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,_pid)(12, 6, 12) */
		reached[0][6] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: fork[((_pid+1)%3)] = _pid(12, 7, 12) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,((_pid+1)%3))(12, 8, 12) */
		reached[0][8] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%3));
		/* merge: ghostDL1 = (ghostDL1-1)(12, 9, 12) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[3] = ((int)now.ghostDL1);
		now.ghostDL1 = (((int)now.ghostDL1)-1);
#ifdef VAR_RANGES
		logval("ghostDL1", ((int)now.ghostDL1));
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 8: // STATE 12 - 1_9.pml:32 - [(((((fork[_pid]!=-(1))&&(fork[((_pid+1)%3)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[((_pid+1)%3)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		if (!(((((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]!= -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 13 - 1_9.pml:35 - [printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,((_pid+1)%3))] (0:20:2 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%3));
		/* merge: fork[_pid] = -(1)(20, 14, 20) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: fork[((_pid+1)%3)] = -(1)(20, 15, 20) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 10: // STATE 16 - 1_9.pml:39 - [((currentP<(3-1)))] (1:0:1 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!((((int)now.currentP)<(3-1))))
			continue;
		/* merge: currentP = (currentP+1)(1, 17, 1) */
		reached[0][17] = 1;
		(trpt+1)->bup.oval = ((int)now.currentP);
		now.currentP = (((int)now.currentP)+1);
#ifdef VAR_RANGES
		logval("currentP", ((int)now.currentP));
#endif
		;
		/* merge: .(goto)(1, 21, 1) */
		reached[0][21] = 1;
		;
		/* merge: goto non_cs(0, 23, 1) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 11: // STATE 21 - 1_9.pml:42 - [.(goto)] (0:1:0 - 2)
		IfNotBlocked
		reached[0][21] = 1;
		;
		/* merge: goto non_cs(0, 23, 1) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 12: // STATE 19 - 1_9.pml:40 - [currentP = 0] (0:1:1 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.oval = ((int)now.currentP);
		now.currentP = 0;
#ifdef VAR_RANGES
		logval("currentP", ((int)now.currentP));
#endif
		;
		/* merge: .(goto)(1, 21, 1) */
		reached[0][21] = 1;
		;
		/* merge: goto non_cs(0, 23, 1) */
		reached[0][23] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}


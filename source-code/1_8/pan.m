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
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [((!(!((ghostDL2==0)))&&!((ghostDL2==1))))] (0:0:0 - 1)
		
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
		if (!(( !( !((((int)now.ghostDL2)==0)))&& !((((int)now.ghostDL2)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:4 - [((!(!((ghostDL1==0)))&&!((ghostDL1==1))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][3] = 1;
		if (!(( !( !((((int)now.ghostDL1)==0)))&& !((((int)now.ghostDL1)==1)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 10 - _spin_nvr.tmp:9 - [(!((ghostDL2==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][10] = 1;
		if (!( !((((int)now.ghostDL2)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 15 - _spin_nvr.tmp:13 - [(!((ghostDL1==1)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported15 = 0;
			if (verbose && !reported15)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported15 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][15] = 1;
		if (!( !((((int)now.ghostDL1)==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 20 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported20 = 0;
			if (verbose && !reported20)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported20 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[1][20] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Phil */
	case 8: // STATE 1 - 1_8.pml:29 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - 1_8.pml:10 - [(((fork[_pid]==-(1))&&(fork[((_pid+1)%3)]==-(1))))] (13:0:3 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]== -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1)))))
			continue;
		/* merge: ghostDL1 = (ghostDL1+1)(13, 3, 13) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghostDL1);
		now.ghostDL1 = (((int)now.ghostDL1)+1);
#ifdef VAR_RANGES
		logval("ghostDL1", ((int)now.ghostDL1));
#endif
		;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,_pid)(13, 4, 13) */
		reached[0][4] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: fork[_pid] = _pid(13, 5, 13) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: ghostDL1 = (ghostDL1-1)(13, 6, 13) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghostDL1);
		now.ghostDL1 = (((int)now.ghostDL1)-1);
#ifdef VAR_RANGES
		logval("ghostDL1", ((int)now.ghostDL1));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 10: // STATE 8 - 1_8.pml:19 - [(((fork[((_pid+1)%3)]==-(1))&&(fork[_pid]==_pid)))] (15:0:3 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(((now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]== -(1))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: ghostDL2 = (ghostDL2+1)(15, 9, 15) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghostDL2);
		now.ghostDL2 = (((int)now.ghostDL2)+1);
#ifdef VAR_RANGES
		logval("ghostDL2", ((int)now.ghostDL2));
#endif
		;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,((_pid+1)%3))(15, 10, 15) */
		reached[0][10] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%3));
		/* merge: fork[((_pid+1)%3)] = _pid(15, 11, 15) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		/* merge: ghostDL2 = (ghostDL2-1)(15, 12, 15) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghostDL2);
		now.ghostDL2 = (((int)now.ghostDL2)-1);
#ifdef VAR_RANGES
		logval("ghostDL2", ((int)now.ghostDL2));
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 11: // STATE 15 - 1_8.pml:36 - [(((((fork[_pid]!=-(1))&&(fork[((_pid+1)%3)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[((_pid+1)%3)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (!(((((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]!= -(1))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 16 - 1_8.pml:39 - [printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,((_pid+1)%3))] (0:20:2 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), ((((int)((P0 *)_this)->_pid)+1)%3));
		/* merge: fork[_pid] = -(1)(20, 17, 20) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: fork[((_pid+1)%3)] = -(1)(20, 18, 20) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[((_pid+1)%3)]", now.fork[ Index(((((int)((P0 *)_this)->_pid)+1)%3), 3) ]);
#endif
		;
		/* merge: .(goto)(0, 21, 20) */
		reached[0][21] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 13: // STATE 23 - 1_8.pml:44 - [-end-] (0:0:0 - 1)
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


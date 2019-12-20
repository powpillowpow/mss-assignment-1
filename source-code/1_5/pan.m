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
	case 3: // STATE 1 - 1_5.pml:49 - [printf('philosopher %d is thinking...\\n',_pid)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		Printf("philosopher %d is thinking...\n", ((int)((P0 *)_this)->_pid));
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - 1_5.pml:9 - [((_pid<(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - 1_5.pml:10 - [(((fork[_pid]==-(1))&&(fork[(_pid+1)]==-(1))))] (35:0:3 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]== -(1))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]== -(1)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,_pid)(35, 4, 35) */
		reached[0][4] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid));
		/* merge: ghost = (ghost+1)(35, 5, 35) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghost);
		now.ghost = (((int)now.ghost)+1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		/* merge: assert((ghost<=1))(35, 6, 35) */
		reached[0][6] = 1;
		spin_assert((((int)now.ghost)<=1), "(ghost<=1)", II, tt, t);
		/* merge: fork[_pid] = _pid(35, 7, 35) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: ghost = (ghost-1)(35, 8, 35) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghost);
		now.ghost = (((int)now.ghost)-1);
#ifdef VAR_RANGES
		logval("ghost", ((int)now.ghost));
#endif
		;
		/* merge: .(goto)(0, 17, 35) */
		reached[0][17] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 6: // STATE 10 - 1_5.pml:17 - [(((fork[(3-1)]==-(1))&&(fork[0]==-(1))))] (35:0:3 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		if (!(((now.fork[ Index((3-1), 3) ]== -(1))&&(now.fork[0]== -(1)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,(3-1))(35, 11, 35) */
		reached[0][11] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), (3-1));
		/* merge: ghost2 = (ghost2+1)(35, 12, 35) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)ghost2);
		ghost2 = (((int)ghost2)+1);
#ifdef VAR_RANGES
		logval("ghost2", ((int)ghost2));
#endif
		;
		/* merge: assert((ghost<=1))(35, 13, 35) */
		reached[0][13] = 1;
		spin_assert((((int)now.ghost)<=1), "(ghost<=1)", II, tt, t);
		/* merge: fork[(3-1)] = _pid(35, 14, 35) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index((3-1), 3) ];
		now.fork[ Index((3-1), 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[(3-1)]", now.fork[ Index((3-1), 3) ]);
#endif
		;
		/* merge: ghost2 = (ghost2-1)(35, 15, 35) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[2] = ((int)ghost2);
		ghost2 = (((int)ghost2)-1);
#ifdef VAR_RANGES
		logval("ghost2", ((int)ghost2));
#endif
		;
		/* merge: .(goto)(0, 17, 35) */
		reached[0][17] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 7: // STATE 19 - 1_5.pml:29 - [((_pid<(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 20 - 1_5.pml:30 - [(((fork[(_pid+1)]==-(1))&&(fork[_pid]==_pid)))] (59:0:3 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!(((now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]== -(1))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: printf('philosopher %d gets fork%d...\\n',_pid,(_pid+1))(59, 21, 59) */
		reached[0][21] = 1;
		Printf("philosopher %d gets fork%d...\n", ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: ghost3 = (ghost3+1)(59, 22, 59) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghost3);
		now.ghost3 = (((int)now.ghost3)+1);
#ifdef VAR_RANGES
		logval("ghost3", ((int)now.ghost3));
#endif
		;
		/* merge: assert((ghost3<=1))(59, 23, 59) */
		reached[0][23] = 1;
		spin_assert((((int)now.ghost3)<=1), "(ghost3<=1)", II, tt, t);
		/* merge: fork[(_pid+1)] = _pid(59, 24, 59) */
		reached[0][24] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 3) ] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]);
#endif
		;
		/* merge: ghost3 = (ghost3-1)(59, 25, 59) */
		reached[0][25] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghost3);
		now.ghost3 = (((int)now.ghost3)-1);
#ifdef VAR_RANGES
		logval("ghost3", ((int)now.ghost3));
#endif
		;
		/* merge: .(goto)(59, 34, 59) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 9: // STATE 34 - 1_5.pml:44 - [.(goto)] (0:59:0 - 2)
		IfNotBlocked
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 27 - 1_5.pml:37 - [(((fork[0]==-(1))&&(fork[(3-1)]==_pid)))] (59:0:3 - 1)
		IfNotBlocked
		reached[0][27] = 1;
		if (!(((now.fork[0]== -(1))&&(now.fork[ Index((3-1), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		/* merge: printf('philosopher %d gets fork0...\\n',_pid)(59, 28, 59) */
		reached[0][28] = 1;
		Printf("philosopher %d gets fork0...\n", ((int)((P0 *)_this)->_pid));
		/* merge: ghost4 = (ghost4+1)(59, 29, 59) */
		reached[0][29] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)now.ghost4);
		now.ghost4 = (((int)now.ghost4)+1);
#ifdef VAR_RANGES
		logval("ghost4", ((int)now.ghost4));
#endif
		;
		/* merge: assert((ghost4<=1))(59, 30, 59) */
		reached[0][30] = 1;
		spin_assert((((int)now.ghost4)<=1), "(ghost4<=1)", II, tt, t);
		/* merge: fork[0] = _pid(59, 31, 59) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = now.fork[0];
		now.fork[0] = ((int)((P0 *)_this)->_pid);
#ifdef VAR_RANGES
		logval("fork[0]", now.fork[0]);
#endif
		;
		/* merge: ghost4 = (ghost4-1)(59, 32, 59) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = ((int)now.ghost4);
		now.ghost4 = (((int)now.ghost4)-1);
#ifdef VAR_RANGES
		logval("ghost4", ((int)now.ghost4));
#endif
		;
		/* merge: .(goto)(59, 34, 59) */
		reached[0][34] = 1;
		;
		_m = 3; goto P999; /* 6 */
	case 11: // STATE 37 - 1_5.pml:57 - [((_pid<(3-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (!((((int)((P0 *)_this)->_pid)<(3-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 38 - 1_5.pml:58 - [(((((fork[_pid]!=-(1))&&(fork[(_pid+1)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[(_pid+1)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		if (!(((((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]!= -(1))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 39 - 1_5.pml:61 - [as6 = ((((fork[_pid]!=-(1))&&(fork[(_pid+1)]!=-(1)))&&(fork[_pid]==_pid))&&(fork[(_pid+1)]==_pid))] (0:61:5 - 1)
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.as6);
		now.as6 = ((((now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]!= -(1))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]!= -(1)))&&(now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]==((int)((P0 *)_this)->_pid)));
#ifdef VAR_RANGES
		logval("as6", ((int)now.as6));
#endif
		;
		/* merge: assert(as6)(61, 40, 61) */
		reached[0][40] = 1;
		spin_assert(((int)now.as6), "as6", II, tt, t);
		/* merge: printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,_pid,(_pid+1))(61, 41, 61) */
		reached[0][41] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), ((int)((P0 *)_this)->_pid), (((int)((P0 *)_this)->_pid)+1));
		/* merge: ghost5 = (ghost5+1)(61, 42, 61) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ghost5);
		now.ghost5 = (((int)now.ghost5)+1);
#ifdef VAR_RANGES
		logval("ghost5", ((int)now.ghost5));
#endif
		;
		/* merge: assert((ghost5<=1))(61, 43, 61) */
		reached[0][43] = 1;
		spin_assert((((int)now.ghost5)<=1), "(ghost5<=1)", II, tt, t);
		/* merge: fork[_pid] = -(1)(61, 44, 61) */
		reached[0][44] = 1;
		(trpt+1)->bup.ovals[2] = now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[_pid]", now.fork[ Index(((int)((P0 *)_this)->_pid), 3) ]);
#endif
		;
		/* merge: fork[(_pid+1)] = -(1)(61, 45, 61) */
		reached[0][45] = 1;
		(trpt+1)->bup.ovals[3] = now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ];
		now.fork[ Index((((P0 *)_this)->_pid+1), 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[(_pid+1)]", now.fork[ Index((((int)((P0 *)_this)->_pid)+1), 3) ]);
#endif
		;
		/* merge: ghost5 = (ghost5-1)(61, 46, 61) */
		reached[0][46] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.ghost5);
		now.ghost5 = (((int)now.ghost5)-1);
#ifdef VAR_RANGES
		logval("ghost5", ((int)now.ghost5));
#endif
		;
		/* merge: .(goto)(0, 60, 61) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 14: // STATE 49 - 1_5.pml:72 - [(((((fork[(3-1)]!=-(1))&&(fork[0]!=-(1)))&&(fork[0]==_pid))&&(fork[(3-1)]==_pid)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		if (!(((((now.fork[ Index((3-1), 3) ]!= -(1))&&(now.fork[0]!= -(1)))&&(now.fork[0]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index((3-1), 3) ]==((int)((P0 *)_this)->_pid)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 50 - 1_5.pml:75 - [as7 = ((((fork[(3-1)]!=-(1))&&(fork[0]!=-(1)))&&(fork[0]==_pid))&&(fork[(3-1)]==_pid))] (0:61:5 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((int)now.as7);
		now.as7 = ((((now.fork[ Index((3-1), 3) ]!= -(1))&&(now.fork[0]!= -(1)))&&(now.fork[0]==((int)((P0 *)_this)->_pid)))&&(now.fork[ Index((3-1), 3) ]==((int)((P0 *)_this)->_pid)));
#ifdef VAR_RANGES
		logval("as7", ((int)now.as7));
#endif
		;
		/* merge: assert(as7)(61, 51, 61) */
		reached[0][51] = 1;
		spin_assert(((int)now.as7), "as7", II, tt, t);
		/* merge: printf('philosopher %d eats with fork%d and fork%d...\\n',_pid,0,(3-1))(61, 52, 61) */
		reached[0][52] = 1;
		Printf("philosopher %d eats with fork%d and fork%d...\n", ((int)((P0 *)_this)->_pid), 0, (3-1));
		/* merge: ghost6 = (ghost6+1)(61, 53, 61) */
		reached[0][53] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.ghost6);
		now.ghost6 = (((int)now.ghost6)+1);
#ifdef VAR_RANGES
		logval("ghost6", ((int)now.ghost6));
#endif
		;
		/* merge: assert((ghost6<=1))(61, 54, 61) */
		reached[0][54] = 1;
		spin_assert((((int)now.ghost6)<=1), "(ghost6<=1)", II, tt, t);
		/* merge: fork[0] = -(1)(61, 55, 61) */
		reached[0][55] = 1;
		(trpt+1)->bup.ovals[2] = now.fork[0];
		now.fork[0] =  -(1);
#ifdef VAR_RANGES
		logval("fork[0]", now.fork[0]);
#endif
		;
		/* merge: fork[(3-1)] = -(1)(61, 56, 61) */
		reached[0][56] = 1;
		(trpt+1)->bup.ovals[3] = now.fork[ Index((3-1), 3) ];
		now.fork[ Index((3-1), 3) ] =  -(1);
#ifdef VAR_RANGES
		logval("fork[(3-1)]", now.fork[ Index((3-1), 3) ]);
#endif
		;
		/* merge: ghost6 = (ghost6-1)(61, 57, 61) */
		reached[0][57] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.ghost6);
		now.ghost6 = (((int)now.ghost6)-1);
#ifdef VAR_RANGES
		logval("ghost6", ((int)now.ghost6));
#endif
		;
		/* merge: .(goto)(0, 60, 61) */
		reached[0][60] = 1;
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 9 */
	case 16: // STATE 64 - 1_5.pml:86 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][64] = 1;
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


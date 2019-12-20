	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Phil */
;
		;
		;
		;
		
	case 5: // STATE 8
		;
		now.ghost = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[1];
		now.ghost = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 6: // STATE 15
		;
		ghost2 = trpt->bup.ovals[2];
		now.fork[ Index((3-1), 3) ] = trpt->bup.ovals[1];
		ghost2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 8: // STATE 25
		;
		now.ghost3 = trpt->bup.ovals[2];
		now.fork[ Index((((P0 *)_this)->_pid+1), 3) ] = trpt->bup.ovals[1];
		now.ghost3 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		
	case 9: // STATE 34
		goto R999;

	case 10: // STATE 32
		;
		now.ghost4 = trpt->bup.ovals[2];
		now.fork[0] = trpt->bup.ovals[1];
		now.ghost4 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		;
		;
		
	case 13: // STATE 46
		;
		now.ghost5 = trpt->bup.ovals[4];
		now.fork[ Index((((P0 *)_this)->_pid+1), 3) ] = trpt->bup.ovals[3];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[2];
		now.ghost5 = trpt->bup.ovals[1];
		now.as6 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;
;
		;
		
	case 15: // STATE 57
		;
		now.ghost6 = trpt->bup.ovals[4];
		now.fork[ Index((3-1), 3) ] = trpt->bup.ovals[3];
		now.fork[0] = trpt->bup.ovals[2];
		now.ghost6 = trpt->bup.ovals[1];
		now.as7 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 16: // STATE 64
		;
		p_restor(II);
		;
		;
		goto R999;
	}


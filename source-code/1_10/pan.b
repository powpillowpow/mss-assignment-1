	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM starvation */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 8
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Phil */
;
		;
		;
		;
		
	case 7: // STATE 7
		;
		now.ghostLF = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.ovals[1];
		now.ghostLF = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 8: // STATE 13
		;
		now.ghostLF2 = trpt->bup.ovals[2];
		now.fork[ Index((5-1), 5) ] = trpt->bup.ovals[1];
		now.ghostLF2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 10: // STATE 20
		;
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		
	case 11: // STATE 26
		goto R999;

	case 12: // STATE 24
		;
		now.fork[0] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 15: // STATE 33
		;
		now.fork[ Index((((P0 *)_this)->_pid+1), 5) ] = trpt->bup.ovals[1];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;
;
		;
		
	case 17: // STATE 39
		;
		now.fork[ Index((5-1), 5) ] = trpt->bup.ovals[1];
		now.fork[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 46
		;
		p_restor(II);
		;
		;
		goto R999;
	}


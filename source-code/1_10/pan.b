	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM absence_starvation */
;
		;
		;
		;
		
	case 5: // STATE 13
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
		
	case 8: // STATE 5
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[1];
		now.critical = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 9: // STATE 13
		;
		now.critical = trpt->bup.ovals[1];
		now.currentPh = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 10: // STATE 13
		;
		now.critical = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 13
		;
		now.critical = trpt->bup.ovals[1];
		now.currentPh = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 12: // STATE 15
		;
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 16
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 14: // STATE 21
		;
		p_restor(II);
		;
		;
		goto R999;
	}


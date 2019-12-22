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
		
	case 8: // STATE 7
		;
		now.critical = trpt->bup.ovals[3];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[1];
		now.critical = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 9: // STATE 9
		;
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 10
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 11: // STATE 15
		;
		p_restor(II);
		;
		;
		goto R999;
	}


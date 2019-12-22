	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Phil */
;
		;
		;
		;
		
	case 5: // STATE 3
		;
		now.ghost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 5
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 6
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 7
		;
		now.ghost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 9
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 12: // STATE 10
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;
	}


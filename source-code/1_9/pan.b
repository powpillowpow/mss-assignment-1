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
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 6
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 10
		;
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 11
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.oval;
		;
		goto R999;
	}


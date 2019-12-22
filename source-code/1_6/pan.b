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
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 4
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 9: // STATE 7
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 8
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;
	}


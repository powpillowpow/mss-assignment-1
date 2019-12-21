	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC P */
;
		;
		
	case 4: // STATE 7
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 8
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 7: // STATE 10
		;
		now.ghost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 9: // STATE 13
		;
		now.ghost = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 14
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;
	}


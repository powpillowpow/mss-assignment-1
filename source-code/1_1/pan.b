	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC P */

	case 3: // STATE 1
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 4: // STATE 2
		;
		now.turn = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 6: // STATE 4
		;
		now.ghost = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 8: // STATE 6
		;
		now.ghost = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 8
		;
		now.flag[ Index(((P0 *)_this)->_pid, 2) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;
	}


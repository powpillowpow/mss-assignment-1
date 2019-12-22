	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Phil */
;
		;
		;
		;
		
	case 5: // STATE 6
		;
		critical = trpt->bup.ovals[3];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.ovals[1];
		critical = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;
;
		;
		;
		;
		
	case 8: // STATE 10
		;
		now.fork[ Index(((P0 *)_this)->_pid, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 9: // STATE 11
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 10: // STATE 16
		;
		p_restor(II);
		;
		;
		goto R999;
	}


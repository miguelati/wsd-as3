﻿package com.wsd{	import flash.display.MovieClip;	import flash.events.Event;	import flash.events.MouseEvent;		public class View extends MovieClip	{		private var buttons:Array = [];		private var actions:Array = [];				public function View(callback = null):void		{			super();						if (callback == null) callback = function(e:Event = null) { removeEventListener(Event.ADDED_TO_STAGE, callback); }						if (stage)		callback();			else			addEventListener(Event.ADDED_TO_STAGE, callback);						addEventListener(Event.REMOVED_FROM_STAGE, removeListeners);		}				private function removeListeners( e:Event = null ):void		{					}				public function mouseEvents(buttons:Array, actions:Array)		{			this.buttons = buttons;			this.actions = actions;									for (var i:Number = 0; i < buttons.length; ++i)			{				buttons[i].addEventListener(MouseEvent.CLICK, actions[i]);			}						addEventListener(Event.REMOVED_FROM_STAGE, removeMouseListeners);		}				private function removeMouseListeners( e:Event = null ):void		{			for (var i:Number = 0; i < buttons.length; ++i)			{				buttons[i].removeEventListener(MouseEvent.CLICK, actions[i]);			}		}	}}
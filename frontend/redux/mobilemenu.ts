import { createSlice } from '@reduxjs/toolkit';

export const mobilemenuSlice = createSlice({
	name: 'mobilemenu',
	initialState: {
		isMobileMenuOpen: false,
	},
	reducers: {
		openMobileMenu: (state) => {
			state.isMobileMenuOpen = true;
		},
		closeMobileMenu: (state) => {
			state.isMobileMenuOpen = false;
		},
		switchMobileMenu: (state) => {
			state.isMobileMenuOpen = !state.isMobileMenuOpen;
		},
	},
});

// Action creators are generated for each case reducer function
export const { openMobileMenu, closeMobileMenu, switchMobileMenu } =
	mobilemenuSlice.actions;

export default mobilemenuSlice.reducer;
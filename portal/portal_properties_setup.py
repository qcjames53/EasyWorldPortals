# The following script is a tool to generate the clone offsets for the illusion
# field of the portals. Modify the globals below to change the shape.

# Globals
MAX_PORTAL_WIDTH = 3
FIELD_WIDTH = 17
FIELD_HEIGHT = 17
RADIUS = 15 # set to -1 to ignore
HEADER_FILE_NAME = "portal.hjmc"

import curses

def visualize(stdscr):
    stdscr.clear()
    curses.init_pair(1, curses.COLOR_RED, curses.COLOR_BLACK)

    center = (int(curses.LINES/2), int(curses.COLS/2))

    stdscr.addstr(center[0], center[1], "+")
    tile_pairs = generate_tile_pairs()
    draw_portals(stdscr, center)
    draw_tiles(stdscr, center, tile_pairs)

    TOP_MESSAGE = f"Generation preview - Press s to save to '{HEADER_FILE_NAME}' or any other key to exit"
    BOTTOM_MESSAGE = f"Tile totals: N-{len(tile_pairs[0])} E-{len(tile_pairs[1])} S-{len(tile_pairs[2])} W-{len(tile_pairs[3])}"
    stdscr.addstr(0, center[1]-len(TOP_MESSAGE)//2, TOP_MESSAGE)
    stdscr.addstr(curses.LINES-1, center[1]-len(BOTTOM_MESSAGE)//2, BOTTOM_MESSAGE)

    stdscr.refresh()
    if stdscr.getkey() == "s":
        return tile_pairs
    return None

def is_below_line(p1, p2, pt):
    v1 = [p2[0]-p1[0], p2[1]-p1[1]]
    v2 = [pt[0]-p1[0], pt[1]-p1[1]]
    cp = v1[0]*v2[1] - v1[1]*v2[0]
    return cp <= 0

def is_within_radius(pt):
    return (RADIUS == -1) or ((pt[0]*pt[0] + pt[1]*pt[1]) < RADIUS*RADIUS)

def generate_tile_pairs():
    tile_pairs_n = set()
    tile_pairs_s = set()
    edge_l = ((-(MAX_PORTAL_WIDTH-1)//2)-0.2,0.5)
    edge_r = ((MAX_PORTAL_WIDTH//2)+0.2,0.5)
    border_edge_l = ((-(MAX_PORTAL_WIDTH-1)//2)-0.5,0)
    border_edge_r = ((MAX_PORTAL_WIDTH//2)+0.5,0)
    for x in range(-FIELD_WIDTH, FIELD_WIDTH+1):
        for z in range(-FIELD_HEIGHT,0):
            pt = (x,z)
            if is_below_line(edge_l, border_edge_r, pt) and \
                is_below_line(border_edge_l, edge_r, pt) and \
                is_within_radius(pt):

                tile_pairs_n.add(pt)
                tile_pairs_s.add((x,-z))
    tile_pairs_e = set()
    tile_pairs_w = set()
    edge_r = (0.5,(-(MAX_PORTAL_WIDTH-1)//2)-0.2)
    edge_l = (0.5,(MAX_PORTAL_WIDTH//2)+0.2)
    border_edge_r = (0,(-(MAX_PORTAL_WIDTH-1)//2)-0.5)
    border_edge_l = (0,(MAX_PORTAL_WIDTH//2)+0.5)
    for x in range(-FIELD_HEIGHT, 0):
        for z in range(-FIELD_WIDTH,FIELD_WIDTH+1):
            pt = (x,z)
            if is_below_line(edge_l, border_edge_r, pt) and \
                is_below_line(border_edge_l, edge_r, pt) and \
                is_within_radius(pt):
                
                tile_pairs_e.add((-x,z))
                tile_pairs_w.add((x,z))
    return [tile_pairs_n, tile_pairs_e, tile_pairs_s, tile_pairs_w]

def draw_portals(stdscr, center):
    # draw portal objects
    stdscr.addstr(
        center[0]-2,
        center[1]-(MAX_PORTAL_WIDTH-1)//2,
        "0"*MAX_PORTAL_WIDTH,
        curses.color_pair(1)
    )
    stdscr.addstr(
        center[0]+2,
        center[1]-(MAX_PORTAL_WIDTH-1)//2,
        "0"*MAX_PORTAL_WIDTH,
        curses.color_pair(1)
    )
    for i in range(-((MAX_PORTAL_WIDTH-1)//2), MAX_PORTAL_WIDTH//2+1):
        stdscr.addstr(
            center[0]+i,
            center[1]-FIELD_WIDTH-2,
            "0",
            curses.color_pair(1)
        )
        stdscr.addstr(
            center[0]+i,
            center[1]+FIELD_WIDTH+2,
            "0",
            curses.color_pair(1)
        )

def draw_tiles(stdscr, center, tile_pairs):
    for x,z in tile_pairs[0]:
        stdscr.addstr(center[0]-2+z, center[1]+x, "▯")
    for x,z in tile_pairs[1]:
        stdscr.addstr(center[0]+z, center[1]+FIELD_WIDTH+2+x, "▯")
    for x,z in tile_pairs[2]:
        stdscr.addstr(center[0]+2+z, center[1]+x, "▯")
    for x,z in tile_pairs[3]:
        stdscr.addstr(center[0]+z, center[1]-FIELD_WIDTH-2+x, "▯")

def save_tile_pairs(tile_pairs):
    nstringx = [str(i[0]) for i in tile_pairs[0]]
    nstringz = [str(i[1]) for i in tile_pairs[0]]
    estringx = [str(i[0]) for i in tile_pairs[1]]
    estringz = [str(i[1]) for i in tile_pairs[1]]
    sstringx = [str(i[0]) for i in tile_pairs[2]]
    sstringz = [str(i[1]) for i in tile_pairs[2]]
    wstringx = [str(i[0]) for i in tile_pairs[3]]
    wstringz = [str(i[1]) for i in tile_pairs[3]]

    print (f"Attempting to modify {HEADER_FILE_NAME}......", end="")
    with open(HEADER_FILE_NAME, "r") as f:
        lines = f.readlines()
    with open(HEADER_FILE_NAME, "w") as f:
        for line in lines:
            if line.strip("\n") == "// AUTO-GENERATED CONTENT BELOW - DO NOT MODIFY":
                break
            f.write(line)
        f.write("// AUTO-GENERATED CONTENT BELOW - DO NOT MODIFY\n")
        f.write(f"#define NSTRINGLISTX {nstringx}\n")
        f.write(f"#define NSTRINGLISTZ {nstringz}\n")
        f.write(f"#define ESTRINGLISTX {estringx}\n")
        f.write(f"#define ESTRINGLISTZ {estringz}\n")
        f.write(f"#define SSTRINGLISTX {sstringx}\n")
        f.write(f"#define SSTRINGLISTZ {sstringz}\n")
        f.write(f"#define WSTRINGLISTX {wstringx}\n")
        f.write(f"#define WSTRINGLISTZ {wstringz}\n")
    print("done")
        


if __name__ == "__main__":
    output = curses.wrapper(visualize)
    if output is not None:
        save_tile_pairs(output)
